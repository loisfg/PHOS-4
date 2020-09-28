function Calcular() {
	var media = (Number(txt1.value) * Number(txt2.value) * Number(txt3.value) * Number(txt4.value)) / 1000; 
	var mensal = media * 0.8;
	var custo = mensal * 12;
	var resultado = ((27 / 100) * custo);
	var resultado2 = resultado * 5;
	mensagem.innerHTML = `O seu potencial economico anual é R$ ${resultado.toFixed(2)}, ou seja, em até 5 anos você terá economizado até R$ ${resultado2.toFixed(2)}`;}
