$(document).ready(function(){		
	$("#nascimento").datepicker({
		showOtherMonths: true,
		selectOtherMonths: true,
		showButtonPanel:false,
		changeMonth: true,
        changeYear: true,
		dateFormat: 'dd/mm/yy',
		dayNames: ['Domingo','Segunda','Terça','Quarta','Quinta','Sexta','Sábado','Domingo'],
		dayNamesMin: ['D','S','T','Q','Q','S','S','D'],
		dayNamesShort: ['Dom','Seg','Ter','Qua','Qui','Sex','Sáb','Dom'],
		monthNames: ['Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro'],
		monthNamesShort: ['Jan','Fev','Mar','Abr','Mai','Jun','Jul','Ago','Set','Out','Nov','Dez']
	});
	
	$('#formCadastrar').bootstrapValidator({
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {                
				senha: {
					validators: {
						notEmpty: {
							message: 'A senha é obrigatória'
						},
						identical: {
							field: 'rsenha',
							message: 'A senha informada e a sua validação não são iguais'
						}
					}
				},
				rsenha:{
					validators: {
						notEmpty: {
							message: 'A confirmação da senha é obrigatória'
						},
						identical: {
							field: 'senha',
							message: 'A senha informada e a sua validação não são iguais'
						}
					}			
				}					
            }
        });
});

