
package com.jeison.ws;

import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.Produces;
import javax.ws.rs.Consumes;
import javax.ws.rs.FormParam;
import javax.ws.rs.POST;

import javax.ws.rs.Path;
import javax.ws.rs.core.MediaType;

/**
 * REST Web Service
 *
 * @author juriel
 */
@Path("person")
public class WebServicePerson {

    @Context
    private UriInfo context;

    /**
     * Creates a new instance of JeisonResource
     */
    public WebServicePerson() {
    }

    /**
     * Retrieves representation of an instance of com.jeison.ws.JeisonResource
     * @param name
     * @return an instance of java.lang.String
     */
    @POST
    @Path(value = "/setname")
    @Produces(MediaType.APPLICATION_JSON)
    public Person getJson(@FormParam("name") String name) {
        Person p = new Person();
        p.setName(name);
        p.setAge(24);
        return p;
    }

    /**
     * PUT method for updating or creating an instance of JeisonResource
     * @param input
     * @param content representation for the resource
     */
    @POST
    @Path(value = "/sendpersona")

    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Person putJson(Person input) {
        input.setName(input.getName().toUpperCase());
        return input;
    }
}
