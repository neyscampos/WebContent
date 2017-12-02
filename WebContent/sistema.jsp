<!doctype html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.0/jquery-ui.css" />
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.1.0.js"></script>
	<script type="text/javascript" src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>

</head>
<body>

	<div id="dialogo">
		<h2>Formulario de Produtos</h2>
		<form name="form1" id="form1" action="Controle?cmd=um" method="post">
			<br />Produto<br /> <input type="text" name="produto" id="produto"
				size="50" /> <br />Preco<br /> <input type="number" step="0.1"
				name="preco" id="preco" size="10" /> <br />Quantidade<br /> <input
				type="number" name="quantidade" id="quantidade" size="10" /> <br />Subtotal<br />
			<input type="number" step="0,1" name="subtotal" id="subtotal"
				readonly size="10" />
			<button id="btnCalcular" type="button">Calculo</button>
			<button id="btnEnviar" type="submit">Enviar</button>
		</form>
	</div>



	<script>
		$(document).ready(function() {
			var vproduto = "";
			var vpreco = 0;
			var vquantidade = 0;
			var vsubtotal = 0;

			$("#dialogo").dialog({
				resizable : false,
				height : 400,
				width : 700,
				modal : true,
				buttons : {
					"create" : {
						text : "OK",
						click : function(event) {
							$("#form1")[0].submit();
						}
					},
					Cancel : function() {
						$(this).dialog("close");
					}
				}

			});

			$("#btnCalcular").on('click', function() {
				vproduto = $("#produto").val();
				vpreco = eval( $("#preco").val() );
				vpreco = eval( $("#preco").val() );
				vquantidade = eval( $("#quantidade").val() );
				vsubtotal = vpreco * vquantidade;
				//imprime o subtotal
				$("#subtotal").val(vsubtotal); 
			});

		});
	</script>

</body>
</html>
