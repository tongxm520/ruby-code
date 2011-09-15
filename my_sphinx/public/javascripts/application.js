// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

function focusText(obj, text){
    obj.css('color','black'); if(obj.val() == text) obj.val('');
}

function blurText(obj, text){
    obj.css('color','#666'); if(obj.val() == '') obj.val(text);
}

