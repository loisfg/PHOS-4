function simular() {
            var gastoEnergetico = ((Number(qtdLampadas.value) * 26 * 15 * 22) / 1000) *
            12; //1000 para converter para quilo Watts hora e multiplicar o valor por 12 meses
            var custo = gastoEnergetico * 0.8; //0,8 é o custo do quilo Wh em SP
            var custo_m = custo / 12;
            var desconto = (27 / 100) * custo; // até 27% de desconto na conta
            var economia_men = ((73 / 100) * custo) / 12;
            resultado.innerHTML = `Com ${qtdLampadas.value} lâmpadas, seu gasto mensal de energia é R$<span style="color:red">${custo_m.toFixed(2)}</span>, porém com nossa tecnologia seu gasto mensal é de R$<span style="color:green">${economia_men.toFixed(2)}</span>.<br>
            Isso representa uma economia anual em energia de até R$<span style="color:blue">${desconto.toFixed(2)}</span>`

}