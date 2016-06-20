package br.edu.unoesc.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.Lob;
import javax.persistence.OneToMany;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode(of = "codigo")
@Entity
public @Data class Avatar implements MinhaEntidade{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;
	
	//@Lob @Basic(fetch= FetchType.EAGER)
	@Column(name = "image", unique = false, nullable = false, length = 100000)
	private byte[] image;

	@OneToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "usuario_avatar", joinColumns = { @JoinColumn(name = "avatar_codigo", referencedColumnName = "codigo") }, 
									 inverseJoinColumns = { @JoinColumn(name = "usuario_codigo", referencedColumnName = "codigo") })
	private List<Usuario> usuarios = new ArrayList<>();
	
	

}
