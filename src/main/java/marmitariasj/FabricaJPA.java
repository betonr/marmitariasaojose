package marmitariasj;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class FabricaJPA {

	private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("marmitaria");
	
	public EntityManager getEntityManager() {
		return emf.createEntityManager();
	}
}
