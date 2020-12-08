'use strict';

/* 
lista e explicação dos Datatypes:
https://codewithhugo.com/sequelize-data-types-a-practical-guide/
*/

module.exports = (sequelize, DataTypes) => {
    let cadastrarUsuario = sequelize.define('cadastrar_usuario',{
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

		fkUsuario: {
			field: 'fkUsuario',
			type: DataTypes.STRING,
			allowNull: false
		}
	}, 
	{
		tableName: 'cadastrar_usuario', 
		freezeTableName: true, 
		underscored: true,
		timestamps: false,
	});

    return cadastrarUsuario;
};

// cadastro para usuario comum

