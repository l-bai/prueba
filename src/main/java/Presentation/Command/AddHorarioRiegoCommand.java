/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Presentation.Command;

import BLL.HorarioBLL;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Lidia Baixauli de la Villa
 */
public class AddHorarioRiegoCommand extends ICommand{

    @Override
    public void initPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
         //listado riego
         HorarioBLL horaBLL = new HorarioBLL();
         request.setAttribute("listaHorarioRiego", horaBLL.listaHorarios());    
    }
    
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
       int resultadoAlta=0;
       String horario = (request.getParameter("horario")).trim();
       if(horario!=null && !horario.equals("")){//si no en blanco
           HorarioBLL horarioBLL = new HorarioBLL();
           resultadoAlta = horarioBLL.addHorarioRiego(horario);           
       }
       if(resultadoAlta==1){
           request.setAttribute("addRiegoOk", "ok");
       }else{
           request.setAttribute("errorAddRiego", "error");
       }
       //volver a cargar el listado
       HorarioBLL horaBLL = new HorarioBLL();
       request.setAttribute("listaHorarioRiego", horaBLL.listaHorarios());    
       return "tablon/editarTablon.jsp";
    }
    
}//fin clase
