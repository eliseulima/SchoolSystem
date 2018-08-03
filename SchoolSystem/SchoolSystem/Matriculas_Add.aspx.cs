using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

namespace SchoolSystem
{
    public partial class Matriculas_Add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void onInsert()
        {

            try
            {
                using (ModelDataContext mdc = new ModelDataContext())
                {
                    Model.Matricula matricula = new Model.Matricula()
                    {
                        idCurso = Convert.ToInt16(DropDownList1.SelectedValue.Trim()),
                        idMateria = Convert.ToInt16(DropDownList2.SelectedValue.Trim()),
                        idAluno = Convert.ToInt16(DropDownList3.SelectedValue.Trim()),                        
                        dataCadastro = DateTime.Parse(DateTime.Now.ToShortDateString())

                    };
                    mdc.Matricula.InsertOnSubmit(matricula);
                    mdc.SubmitChanges();
                    Response.Redirect("Matriculas.aspx");
                }
            }
            catch (Exception)
            {


            }

        }

        

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            this.onInsert();
        }
    }
}