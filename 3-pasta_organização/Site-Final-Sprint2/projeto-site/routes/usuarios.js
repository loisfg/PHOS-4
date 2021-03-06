var express = require('express');
var router = express.Router();
var sequelize = require('../models').sequelize;
var Usuario = require('../models').Usuario;
var cadastrar_usuario = require('../models').cadastro_usuarios;


let sessoes = [];

/* Recuperar usuário por login e senha */
router.post('/autenticar', function(req, res, next) {
	console.log('Recuperando usuário por login e senha');

	var cnpj_cpf = req.body.cnpj_cpf; // depois de .body, use o nome (name) do campo em seu formulário de login
	var senha = req.body.senha; // depois de .body, use o nome (name) do campo em seu formulário de login	
	
	let instrucaoSql = `select * from usuario
	where usuario.cnpj = '${cnpj_cpf}' and usuario.senha= '${senha}'`;

	console.log(instrucaoSql);

	sequelize.query(instrucaoSql, {
		model: Usuario
	}).then(resultado => {
		console.log(`Encontrados: ${resultado.length}`);

		if (resultado.length == 1) {
			sessoes.push(resultado[0].dataValues.cnpj);
			console.log('sessoes: ',sessoes);
			res.json(resultado[0]);
		} else if (resultado.length == 0) {
			res.status(403).send('Login e/ou senha inválido(s)');
		} else {
			res.status(403).send('Mais de um usuário com o mesmo login e senha!');
		}

	}).catch(erro => {
		console.error(erro);
		res.status(500).send(erro.message);
  	});
});

/* Cadastrar usuário */
router.post('/cadastrar', function(req, res, next) {
	console.log('Criando um usuário');
	
	Usuario.create({
		razaosocial: req.body.razaosocial,
		nomefantasia: req.body.nomefantasia,
		telefone: req.body.telefone,
		celular: req.body.celular,
		estado: req.body.estado,
		cidade: req.body.cidade,
		bairro: req.body.bairro,
		rua: req.body.rua,
		numero: req.body.numero,
		cnpj: req.body.cnpj,
		representante: req.body.representante,
		email: req.body.email,
		senha: req.body.senha
	}).then(resultado => {
		console.log(`Registro criado: ${resultado}`)
        res.send(resultado);
    }).catch(erro => {
		console.error(erro);
		res.status(500).send(erro.message);
  	});
});

// empresa cadastrando usuario
/* Cadastrar usuário */
router.post('/cadastrar-usuario', function(req, res, next) {
	console.log('Criando um usuário da empresa');
	
	cadastrarUsuario.create({
		CPF: req.body.CPF,
		nome: req.body.nome,
		email: req.body.email,
		funcao: req.body.funcao,
		senha: req.body.senha
	}).then(resultado => {
		console.log(`Registro criado: ${resultado}`)
        res.send(resultado);
    }).catch(erro => {
		console.error(erro);
		res.status(500).send(erro.message);
  	});
});

/* Verificação de usuário */
router.get('/sessao/:login', function(req, res, next) {
	let cnpj = req.params.cnpj;
	console.log(`Verificando se o usuário ${representante_usuario} tem sessão`);
	
	let tem_sessao = false;
	for (let u=0; u<sessoes.length; u++) {
		if (sessoes[u] == cnpj) {
			tem_sessao = true;
			break;
		}
	}

	if (tem_sessao) {
		let mensagem = `Usuário ${representante_usuario} possui sessão ativa!`;
		console.log(mensagem);
		res.send(mensagem);
	} else {
		res.sendStatus(403);
	}
	
});


/* Logoff de usuário */
router.get('/sair/:login', function(req, res, next) {
	let cnpj = req.params.cnpj;
	console.log(`Finalizando a sessão do usuário ${cnpj}`);
	let nova_sessoes = []
	for (let u=0; u<sessoes.length; u++) {
		if (sessoes[u] != cnpj) {
			nova_sessoes.push(sessoes[u]);
		}
	}
	sessoes = nova_sessoes;
	res.send(`Sessão do usuário ${cnpj} finalizada com sucesso!`);
});


/* Recuperar todos os usuários */
router.get('/', function(req, res, next) {
	console.log('Recuperando todos os usuários');
	Usuario.findAndCountAll().then(resultado => {
		console.log(`${resultado.count} registros`);

		res.json(resultado.rows);
	}).catch(erro => {
		console.error(erro);
		res.status(500).send(erro.message);
  	});
});

module.exports = router;
