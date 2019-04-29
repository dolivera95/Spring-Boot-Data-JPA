package com.bolsaideas.springboot.app;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;


import com.bolsaideas.springboot.app.auth.handler.LoginSuccessHandler;
import com.bolsaideas.springboot.app.models.service.JpaUserDetailsService;

@EnableGlobalMethodSecurity(securedEnabled = true, prePostEnabled = true)
@Configuration
public class SpringSecurityConfig extends WebSecurityConfigurerAdapter{
	
	@Autowired
	private JpaUserDetailsService userDetailsService;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@Autowired //Inyección de independencias
	private LoginSuccessHandler successHandler;
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		// TODO Auto-generated method stub
		http.authorizeRequests().antMatchers("/", "/css/**", "/js/**", "/images/**", "/listar", "/locale").permitAll()
		/*.antMatchers("/ver//**").hasAnyRole("USER")*/
		/*.antMatchers("/uploads/**").hasAnyRole("USER")*/
		/*.antMatchers("/form/**").hasAnyRole("ADMIN")*/
		/*.antMatchers("/eliminar/**").hasAnyRole("ADMIN")*/
		/*.antMatchers("/factura/**").hasAnyRole("ADMIN")*/
		.anyRequest().authenticated()
		.and()
			.formLogin()
				.successHandler(successHandler)
				.loginPage("/login") //Mapea a login.html personalizado
			.permitAll()
		.and()
		.logout().permitAll()
		.and()
		.exceptionHandling().accessDeniedPage("/error_403");
	}

	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder build) throws Exception {
		//Metodo para llamar a la BD de usuarios y tenerlo registrado para verificar cualquier logueo
		build.userDetailsService(userDetailsService)
		.passwordEncoder(passwordEncoder);
		
	}
	
	
}
