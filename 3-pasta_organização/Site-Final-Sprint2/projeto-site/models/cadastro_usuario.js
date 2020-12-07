'use strict';

/* 
lista e explicação dos Datatypes:
https://codewithhugo.com/sequelize-data-types-a-practical-guide/
*/

module.exports = (sequelize, DataTypes) => {
    let cadastrar_usuario = sequelize.define('cadastrar_usuario',{
		CPF: {
			field: 'CPF',
			type: DataTypes.INTEGER,
			primaryKey: true,
			autoIncrement: true
		},
		nome: {
			field: 'nome',
			type: DataTypes.STRING,
			allowNull: false
		},
			email: {
			field: 'email',
			type: DataTypes.STRING,
			allowNull: false
		},
		funcao: {
			field: 'funcao',
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
		tableName: 'cadastrar_usuario', 
		freezeTableName: true, 
		underscored: true,
		timestamps: false,
	});

    return cadastrar_usuario;
};

// cadastro para usuario comum

