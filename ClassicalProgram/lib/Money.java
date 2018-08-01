public class Money {
	private static final String[] uppID = { "零", "壹", "贰", "叁", "肆", "伍", "陆", "柒",
	"捌", "玖" };

	public static void main(String[] args) throws Exception {
	// 省略
  System.out.println(Character.getNumericValue("2004500630".charAt(4))+10000);
  System.out.println("2004500630".substring(1));
  System.out.println("2004500630".startsWith("0"));
	System.out.println(translate("2004500630"));
	}

	public static String translate(String money) {
	StringBuilder chinMoney = new StringBuilder();
	money =  checkStart(money);
	int zeroNum=0; 
	int digit = money.trim().length(); //判断总位数		      
	int temp = digit; //保存位数
	for (int i = 0; i < temp; i++)
	{
	//判断当前位数是几
	int pos = Character.getNumericValue(money.charAt(i));
	//获取大写表示
	String chinDigit = uppID[pos];
	String unit = "";
	if (pos != 0) {
	//得到当前最高位的中文表示
	unit = getUnit(digit);
	zeroNum = 0;
	} else {
		// 如果亿、万为零，须特殊处理，零不说出，而保留亿或万，这时flag增加
		if (digit == 9 || digit == 5) {
		chinDigit = "";
		unit = getUnit(digit);
		}
		else if (1 == digit) //最后一位零不写
		{
		chinDigit = "";
		}
		else
		{
		++zeroNum;
		}
	}
		         
	//判断零的个数
	if (zeroNum > 1){
		// 忽略该位，处理下一位
		if(pos==0 && (i+1)<temp){
			int next = Character.getNumericValue(money.charAt(i+1));
			//下一位不为零则加入
			if(0!=next){
				chinMoney.append(unit).append(chinDigit);
			}else if(9==digit){
				chinMoney.append(unit).append(chinDigit);
			}else if(5==digit){
				chinMoney.append(unit).append(chinDigit);
			}
		}
		digit--;
	}
	else
	{
	// 如果是一十亿、一十万之类的，前面的“一”不要，这样更符合中文习惯
	if (pos == 1)
	{
	if ((digit == 6 || digit == 10)&&0==i)
	{
	chinDigit = "";
	}
	}
	if(pos==0 && zeroNum>0 && (i+1)<temp && (5!=digit || 9!=digit))
	{
	int next = Character.getNumericValue(money.charAt(i+1));
	if(0!=next)
	{
	//chinDigit = uppID[pos];
	chinMoney.append(unit).append(chinDigit);
	}
	}
	else
	{
	chinMoney.append(chinDigit).append(unit);
	}
	digit--;
	}
	}

	return chinMoney.toString();
	}


/**
* 检查输入是否以零开头
* @param money
* @return
*/
	private static String checkStart(String money)
	{
	if(money.startsWith("0"))
	{
	money = money.substring(1);
	}
	return money.startsWith("0")?checkStart(money):money;
	}

/**
* 位数表示，如亿、万等
*
* @param digit
* @return
*/
	private static String getUnit(int digit) {
		String unit = null;
		switch (digit) {
			case 12:
			case 8:
			case 4:
			unit = "千";
			break;
			case 11:
			case 7:
			case 3:
			unit = "百";
			break;
			case 10:
			case 6:
			case 2:
			unit = "十";
			break;
			case 9:
			unit = "亿";
			break;
			case 5:
			unit = "万";
			break;
			default:
			unit = "";
			break;
		}

		return unit;
	}
} 
