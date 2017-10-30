/*
 * FTD VALIDATION LIBRARY
 * AUTOR: FABIO TAVARES DIPPOLD
 * DATA: 24/10;/2014
 * VERSÃO: 1.0.0
 * HISTORICO:
 * 24/10/14 - 1.0.0 - PROJETO REFERENCIA PARA DISCIPLINA DE PROGRAMAÇÃO 4
 * 
 */

var __TYPE_INPUT_TYPE_TEXT = 1;
var __TYPE_INPUT_TYPE_PASSWD = 2;
var __TYPE_INPUT_TYPE_BUTTON = 3;
var __TYPE_TEXT_AREA = 4;
var __TYPE_COMBOBOX = 5;
var __TYPE_LIST_BOX = 6;

var __RULE_REQUIRED = 1;
var __RULE_MIN_LENGTH = 2;
var __RULE_MAX_LENGTH = 3;
var __RULE_DIGITS = 4;
var __RULE_EMAIL = 5;
var __RULE_DATE = 6;
var __RULE_TIME = 7;
var __RULE_FINANCIALS = 8;
var __RULE_CPF = 9;
var __RULE_NUMBERS = 10;

var __RULE_REQUIRED_MSG = "Campo é obrigatório!";
var __RULE_MIN_LENGTH_MSG = "Informação obrigatória";
var __RULE_MAX_LENGTH_MSG = "Informação obrigatória";
var __RULE_DIGITS_MSG = "Informação obrigatória";
var __RULE_EMAIL_MSG = "Campo deve ser um E-mail!";
var __RULE_DATE_MSG = "Informação obrigatória";
var __RULE_TIME_MSG = "Informação obrigatória";
var __RULE_FINANCIALS_MSG = "Informação obrigatória";
var __RULE_CPF_MSG = "Informação obrigatória";
var __RULE_NUMBERS_MSG = "Informação obrigatória";


/*
 * EXPRESSÕES REGULARES...
 */

var __isRequired = function (theValue) {
    return (theValue !== "");
};

var __isNumber = function (theValue) {
    var expReg = /^\d+$/;
    return expReg.test(theValue);
};

var __isCPF = function (theValue) {
    var expReg = /^(([0-9]{3}.[0-9]{3}.[0-9]{3}-[0-9]{2})|([0-9]{11}))$/;
    return expReg.test(theValue);
};

var __isDecimalPt = function (theValue) {
    var expReg = /^[+-]?((\d+|\d{1,3}(\.\d{3})+)(\,\d*)?|\,\d+)$/;
    return expReg.test(theValue);
};

var __isDecimalEn = function (theValue) {
    var expReg = /^[+-]?((\d+|\d{1,3}(\,\d{3})+)(\.\d*)?|\.\d+)$/;
    return expReg.test(theValue);
};

var __isDigital = function (theValue) {
    var expReg = /^\d+$/;
    return expReg.test(theValue);
};

var __isFinancial = function (theValue) {
    var expReg = /^\d{1,3}(\.\d{3})*\,\d{2}$/;
    return expReg.test(theValue);
};

var __isDate = function (theValue) {
    // Format = DD/MM/AAAA.
    var expReg = /^((0[1-9]|[12]\d)\/(0[1-9]|1[0-2])|30\/(0[13-9]|1[0-2])|31\/(0[13578]|1[02]))\/\d{4}$/;
    return expReg.test(theValue);
};

var __isTime = function (theValue) {
    // Format = HH:MM.
    var expReg = /^\d{2}:\d{2}$/;
    return expReg.test(theValue);
};

var __isEmail = function (theValue) {
    // Format livre.
    var expReg = /^[\w!#$%&'*+\/=?^`{|}~-]+(\.[\w!#$%&'*+\/=?^`{|}~-]+)*@(([\w-]+\.)+[A-Za-z]{2,6}|\[\d{1,3}(\.\d{1,3}){3}\])$/;
    return expReg.test(theValue);
};

var __hasMinimalLength = function (theValue, theMinValue) {
    return (theValue.length >= theMinValue);
};

var __hasMaximalLength = function (theValue, theMaxValue) {
    return (theValue.length <= theMaxValue);
};

/*
 * ABSTRACT FORM MODEL... 
 */
var __FORM_MODEL_SAMPLE = {
    "id": "formMain",
    "name": "formMain",
    "label": "Autenticação da Aplicação",
    "fields": [
        {"id": "user.login",
            "name": "user.login",
            "label": "User Login",
            "type": __TYPE_INPUT_TYPE_TEXT,
            "defaultValue": null,
            "cols": 15,
            "rows": 1,
            "options": null,
            "rules": [
                {"id": 1, "type": __RULE_REQUIRED, "value": null, "infoMessage": "...", "errorMessage": "...."},
                {"id": 2, "type": __RULE_MIN_LENGTH, "value": 8, "infoMessage": "...", "errorMessage": "...."},
                {"id": 3, "type": __RULE_MAX_LENGTH, "value": 15, "infoMessage": "...", "errorMessage": "...."}
            ],
            "spanMessageId": "userMsgSpan"
        }, // END OFF THE FIRST FIELD MODEL.
        {"id": "user.passwd",
            "name": "user.passwd",
            "label": "Senha",
            "type": __TYPE_INPUT_TYPE_PASSWD,
            "defaultValue": null,
            "cols": 15,
            "rows": 1,
            "options": null,
            "rules": [
                {"id": 1, "type": __RULE_REQUIRED, "value": null, "infoMessage": "...", "errorMessage": "...."},
                {"id": 2, "type": __RULE_MIN_LENGTH, "value": 8, "infoMessage": "...", "errorMessage": "...."},
                {"id": 3, "type": __RULE_MAX_LENGTH, "value": 15, "infoMessage": "...", "errorMessage": "...."}
            ],
            "spanMessageId": "passwdMsgSpan"
        }  // END OFF THE FIELD MODEL.                    
    ] // END OF FIELDS MODELS.
}; // END OF FORM MODEL.

/*
 * VALIDATIONS ENGINE...
 */
var __isFormValidated = function (theFormModel) {
    var isValidated = true;
    $.each(theFormModel.fields, function (i, __fieldModel) {
        isValidated = __isFieldValidated(__fieldModel, isValidated);
    });

    return isValidated;
};


var __isFieldValidated = function (theFieldModel, isValidated) {
    var theFieldValue = $("#" + theFieldModel.id).val();
    var theSpamMessageArea = $("#" + theFieldModel.spanMessageId);
    var theErrorMessages = new StringBuilder();
    var isFieldsValidated = true;
    $.each(theFieldModel.rules, function (i, __ruleModel) {
        //alert(theFieldModel.id + " - " + __roleModel.type);
        switch (__ruleModel.type) {
            case (__RULE_REQUIRED):
                isFieldsValidated = __isRequired(theFieldValue);
                break;
            case (__RULE_MIN_LENGTH):
                isFieldsValidated = __hasMinimalLength(theFieldValue, __ruleModel.value);
                break;
            case (__RULE_MAX_LENGTH):
                isFieldsValidated = __isMandatory(theFieldValue);
                break;
            case (__RULE_EMAIL):
                isFieldsValidated = __isEmail(theFieldValue);
                break;
            default:
                isFieldsValidated = false;
                alert("[ftd.validations.framework] regra de validação não reconhecida!");
        }
        if (!isFieldsValidated) {
            isValidated = false;
            if (i !== 0)
                theErrorMessages.append("  ");
            theErrorMessages.append("(");
            theErrorMessages.append(__ruleModel.id);
            theErrorMessages.append(")-");
            theErrorMessages.append(__ruleModel.errorMessage);
        }
        //alert(theFieldModel.id + " - " + __ruleModel.type + " isValidField: " + isFieldsValidated + " isValidForm: " + isValidated);
    });

    if (!isValidated) {
        theSpamMessageArea.text(theErrorMessages.toString());
    } else {
        theSpamMessageArea.text("");
    }

    return isValidated;
};


var __clearErrorMessages = function (theFormModel) {
    $.each(theFormModel.fields, function (i, __fieldModel) {
        $("#" + __fieldModel.id).val("");
        if (__fieldModel.rules === null) {
            $("#" + __fieldModel.spanMessageId).text("");
        } else {
            $("#" + __fieldModel.spanMessageId).text("*");
        }
    });
};

var __updateDefaultValues = function (theFormModel) {
    $.each(theFormModel.fields, function (i, __fieldModel) {
        $("#" + __fieldModel.id).val(__fieldModel.defaultValue);  
    });
};