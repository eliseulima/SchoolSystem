using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

namespace SchoolSystem
{
    public partial class Curso_Add : System.Web.UI.Page
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
                    Model.Cursos curso = new Model.Cursos()
                    {
                        Nomec = tbNome.Text.Trim(),
                        Descricao = tbDescriao.Text.Trim(),                        
                        dataCadastro = DateTime.Parse(DateTime.Now.ToShortDateString())

                    };
                    mdc.Cursos.InsertOnSubmit(curso);
                    mdc.SubmitChanges();
                    Response.Redirect("Curso.aspx");
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