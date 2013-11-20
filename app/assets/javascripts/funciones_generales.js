function cambiarPagina(object){
	document.location = "./"+object.name+".html";
}

/*function cambiar(){
	$('#avatarElegido').append('<img src="images/Personajes/Marie.jpg" width="360px" height="480px">');
}*/

$(function() {
    $( "#fecha" ).datepicker();
  })

$(document).ready(function(){
	var avatar = null;
	$('#base1').hide();
	$('#cab2').hide();
	$('#chal2').hide();
	$('#pant2').hide();
	//$('#scene-diana').hide();
	
	$('#a1c1').click(function(){$('#cab2').hide();$('#cab1').show();});
	$('#a1c2').click(function(){$('#cab1').hide();$('#cab2').show();});
	
	$('#a2c1').click(function(){$('#chal2').hide();$('#chal1').show();});
	$('#a2c2').click(function(){$('#chal1').hide();$('#chal2').show();});
	
	$('#a3c1').click(function(){$('#pant2').hide();$('#pant1').show();});
	$('#a3c2').click(function(){$('#pant1').hide();$('#pant2').show();});
	
	$('#avatarMarie').click(function(){alert('Has elegido a Marie'); avatar = 'Marie';});
	$('#continueCreacionAvatar').click(
		function(){
			alert('Estas seguro de elegir a ' + avatar);
	});
	
	$('#avatarDiana').mousemove(function(){$('#scene-diana').show();});
	$('#avatarDiana').hover(function(){$(this).fadeOut(50);$(this).fadeIn(50);});
	
	var fixedDiv = $('#container-perfil-coments');
	var offset = fixedDiv.offset();
	$(window).on('scroll', function(){
		if($(window).scrollTop() > fixedDiv.offset.top) {
			fixedDiv.addClass('fijo');
		} else{
			fixedDiv.removeClass('fijo');
		}
	});
	
	/*var menu = $('#cabecera');
	var menu_offset = menu.offset();
	$(window).on('scroll', function() {
		if($(window).scrollTop() > menu_offset.top) {
			menu.addClass('fijo');
		} else {
			menu.removeClass('fijo');
		}
	});*/
	
});

  
 //morir a tu lado es una manera celestial de morir

/*$(window).ready(function() {
		$('#magazine').turn({
							display: 'double',
							acceleration: true,
							gradients: !$.isTouch,
							elevation:50,
							when: {
								turned: function(e, page) {
									/*console.log('Current view: ', $(this).turn('view'));
								}
							}
						});
	});
	
	
	$(window).bind('keydown', function(e){
		
		if (e.keyCode==37)
			$('#magazine').turn('previous');
		else if (e.keyCode==39)
			$('#magazine').turn('next');
			
	});
	
$("#avatarMarie").mousemove(function(event){
    $("span").text(event.pageX + ", " + event.pageY);
  });*/