package com.bolsaideas.springboot.app.models.dao;

import org.springframework.data.repository.CrudRepository;

import com.bolsaideas.springboot.app.models.entity.Usuario;

public interface IUsuarioDao extends CrudRepository<Usuario, Long> {

	//Ejecutar consulta JPQL por medio del método (Query Method Name)
	//Otra opción es con el decorador 
	//@Query("select u from Usuario u where u.username=?1")
	//public Usuario fetchByUsername(String username)
	public Usuario findByUsername(String username);
}
