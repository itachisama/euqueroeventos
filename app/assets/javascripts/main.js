$(document).ready(function() {
	//Ativa o menu...
	$("#jMenu").jMenu({
      openClick : false,
      ulWidth : 'auto',
      effects : {
        effectSpeedOpen : 300,
        effectSpeedClose : 300,
        effectTypeOpen : 'slide',
        effectTypeClose : 'slide',
        effectOpen : 'linear',
        effectClose : 'linear'
      },
      TimeBeforeOpening : 100,
      TimeBeforeClosing : 400,
      animatedText : false,
      paddingLeft: 1
    });
});
