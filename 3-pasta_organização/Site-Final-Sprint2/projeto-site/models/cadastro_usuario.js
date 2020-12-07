'use strict';

/* 
lista e explicação dos Datatypes:
https://codewithhugo.com/sequelize-data-types-a-practical-guide/
*/

module.exports = (sequelize, DataTypes) => {
    let cadastrar_usuario = sequelize.define('cadastrar_usuario',{
		id: {
			field: 'id',
			type: DataTypes.INTEGER,
			primaryKey: true,
			autoIncrement: true
		},		

		razaosocial: {
			field: 'razaosocial',
			type: DataTypes.STRING,
			allowNull: false
		},

		nomefantasia: {
			field: 'nomefantasia',
			type: DataTypes.STRING,
			allowNull: false
		},

		telefone: {
			field: 'telefone',
			type: DataTypes.STRING,
			allowNull: false
		},
		celular: {
			field: 'celular',
			type: DataTypes.INTEGER,
			allowNull: false
		},
		estado: {
			field: 'estado',
			type: DataTypes.STRING,
			allowNull: false
		},
		cidade: {
			field: 'cidade',
			type: DataTypes.STRING,
			allowNull: false
		},
		bairro: {
			field: 'bairro',
			type: DataTypes.STRING,
			allowNull: false
		},
		rua: {
			field: 'rua',
			type: DataTypes.STRING,
			allowNull: false
		},
		numero: {
			field: 'numero',
			type: DataTypes.STRING,
			allowNull: false
		},		
		cnpj: {
			field: 'cnpj',
			type: DataTypes.STRING,
			allowNull: false
		},
		representante: {
			field: 'representante',
			type: DataTypes.STRING,
			allowNull: false
		},
			email: {
			field: 'email',
			type: DataTypes.STRING,
			allowNull: false
		},
		senha: {
			field: 'senha',
			type: DataTypes.STRING,
			allowNull: false
		},

	
	}, 
	{
		tableName: 'cadastro_usuario', 
		freezeTableName: true, 
		underscored: true,
		timestamps: false,
	});

    return cadastrar_usuario;
};

// cadastro para usuario comum

