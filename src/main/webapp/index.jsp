<!DOCTYPE HTML>
<!-- adding comment -->
<html dir="ltr" lang="pt-BR">
<head>
	<title>Checklist Pull Request</title>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
	<meta content="text/html; charset=UTF-8" http-equiv="content-type"/>
	<link href="https://www.smiles.com.br/smiles-default-theme/images/favicon.ico" rel="Shortcut Icon"/>	
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600' rel='stylesheet' 
			type='text/css'></link>
	<style type="text/css">
		body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, form, fieldset, input, textarea, p, blockquote, 
				th, td { 
		  padding:0;
		  margin:0;}
		
		fieldset, img {border:0}
		
		ol, ul, li {list-style:none}
		
		:focus {outline:none}
		
		body, input, textarea, select {
			font-family: 'Open Sans', sans-serif;
			font-size: 16px;
			color: #4c4c4c;
		}
		
		html {
		  background-color: #ffffff;
		}
				
		hr {
  			color: #a9a9a9;
  			opacity: 0.3;
  			margin: 0px;
  			padding: 0px;
		}
		
		p {
  			font-size: 16px;
  			display: inline-block;
  			margin-left: 18px;
		}
	
		h1 {
			font-size: 32px;
			font-weight: 300;
			color: #fff;
			text-align: center;
			padding-top: 35px;
		}

		form {
		  margin: 0 30px;
		}
		
		input[type=checkbox] {
			/* Double-sized Checkboxes */
			-ms-transform: scale(1.4); /* IE */
			-moz-transform: scale(1.4); /* FF */
			-webkit-transform: scale(1.4); /* Safari and Chrome */
			-o-transform: scale(1.4); /* Opera */
			padding: 10px;		
  			margin-bottom: 25px;
		}
		
		.checkboxtext {
			/* Checkbox text */
			display: inline;
  			font-size: 16px;
  			display: inline-block;
  			margin-left: 18px;			
		}		

		.testbox {
			margin: 20px auto;
			width: 800px; 
			height: 580px; 
			-webkit-border-radius: 8px/7px; 
			-moz-border-radius: 8px/7px; 
			border-radius: 8px/7px; 
			background-color: #ebebeb; 
			-webkit-box-shadow: 1px 2px 5px rgba(0,0,0,.31); 
			-moz-box-shadow: 1px 2px 5px rgba(0,0,0,.31); 
			box-shadow: 1px 2px 5px rgba(0,0,0,.31); 
			border: solid 1px #cbc9c9;
		}
	
		.header {
	    	width: 800px;
	    	height: 121px;
	  		-webkit-border-radius: 8px/7px; 
	  		-moz-border-radius: 8px/7px;     
	    	background-color: #ff9934;
	    	box-sizing: border-box;
	    	padding: 0px;
	    	margin: 0px;
		}
	
		.sprite-logo-smiles1511 {
			background-image: url(http://smiles.com.br/smiles-default-theme/images/xsprite-home.png.pagespeed.ic.Mg9DRj-T0q.webp);
	    	background-repeat: no-repeat;
	    	background-position: 0 -266px;
	    	height: 121px;
	    	width: 288px;
	    	float: left;
	  		-webkit-border-radius: 8px/7px; 
	  		/*-moz-border-radius: 8px/7px;*/    
		}

		.divStatus {
	    	right: 20px;
	    	width: 248px;
	    	height: 55px;
	    	float: right;
	    	text-align: center;
	    	background-color: #FFFF00;
	    	border: 2px solid #ff9934;
	    	box-sizing: border-box;
	    	padding: 13px 20px 0 22px;
	  		-webkit-border-radius: 8px/7px; 
	  		/*-moz-border-radius: 8px/7px;*/    	
		}
		
		.divFail {
			color: #000;
	    	background-color: #FFFF00;
	    	border: 2px solid #ff9934;
		}
		
		.divPass {
			color: #FFF;
    		background-color: #5fba7d;
	    	border: 2px solid #088A08;
		}
		
		.pStatus {
  			font-size: 16px;
  			text-align: center;
  			padding: 0;
  			margin: 0;
		}
	</style>
	<script type="text/javascript">
	function Validate(obj) {
		var divSTATUS = document.getElementById("status");
		var pSTATUS = document.getElementById("textStatus");
		var FORM = obj.form;
		var CHECK = FORM.getElementsByTagName("input");
		var counter = 0;
		for (var i = 0; i < CHECK.length; i++) {
			if (CHECK[i].checked) {
				counter++;
			}
		}
		if (counter < CHECK.length) {
			divSTATUS.className = "divStatus divFail";
			pSTATUS.innerHTML = "Checklist Incompleto";
		}else {
			divSTATUS.className = "divStatus divPass";
			pSTATUS.innerHTML = "Checklist OK";
		}
		return true;
	}
	</script>
</head>
<body>
	<div class="testbox">
		<div class="header">
			<div class="sprite-logo-smiles1511"></div>
			<h1>Checklist Pull Request</h1>			
		</div>
		<br/>
		<form name="mainForm" action="/">
			<ul>
				<li>
					<input type="checkbox" name="item01" id="item01" required onclick="Validate(this)"/>
					<span class="checkboxtext">
						1. A nomenclatura do branch cont�m o nome do projeto?
					</span>
				</li>
<!-- 				<li>
					<input type="checkbox" name="item01" id="item01" placeholder="Email" required />
					Criou teste unit�rio para a nova atualiza��o?
				</li>
				<li>
					<input type="checkbox" name="item01" id="item01" placeholder="Email" required />
					Passou nos testes unit�rios?
				</li>
				<li>
					<input type="checkbox" name="item01" id="item01" placeholder="Email" required />
					Criou teste integrado para a nova atualiza��o?
				</li>
				<li>
					<input type="checkbox" name="item01" id="item01" placeholder="Email" required />
					Passou nos testes integrados?
				</li>
				<li>
					<input type="checkbox" name="item01" id="item01" placeholder="Email" required />
					Passou no teste regressivo?
				</li>
				<li>
					<input type="checkbox" name="item01" id="item01" placeholder="Email" required />
					A cobertura de teste foi superior ou igual a 60%?
				</li>				
 -->				<li>
					<input type="checkbox" name="item02" id="item02" required onclick="Validate(this)"/>
					<p>2. O job passou com verde no jenkins?</p>
				</li>
				<li>
					<input type="checkbox" name="item03" id="item03" required onclick="Validate(this)"/>
					<p>3. Passou na meta do sonar?</p>
				</li>
				<li>
					<input type="checkbox" name="item04" id="item04" required onclick="Validate(this)"/>
					<p>4. Inseriu coment�rio no commit com o nr da issue?</p>
				</li>
				<li>
					<input type="checkbox" name="item05" id="item05" required onclick="Validate(this)"/>
					<p>5. Executou comando de merge back (branch atual com a master?)</p>
				</li>
				<li>
					<input type="checkbox" name="item06" id="item06" required onclick="Validate(this)"/>
					<p>6. Gerou o pacote corretamente?</p>
				</li>
				<li>
					<input type="checkbox" name="item07" id="item07" required onclick="Validate(this)"/>
					<p>7. O pacote foi tagueado corretamente?</p>
				</li>
				<li>
					<input type="checkbox" name="item08" id="item08" required onclick="Validate(this)"/>
					<p>8. Pacote ficou dispon�vel no nexus?</p>
				</li>
			</ul>
			<div id="status" class="divStatus divFail">
				<p id="textStatus" class="pStatus">Checklist Incompleto</p>
			</div>
		</form>
	</div>
</body>
</html>