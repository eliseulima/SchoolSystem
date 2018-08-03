using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchoolSystem
{
    public partial class Matriculas_Excluir : System.Web.UI.Page
    {
        private ModelDataContext mdc;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    this.populateFields(int.Parse(Request.QueryString["id"]));
                }
                catch (Exception)
                {

                    this.populateFields();
                }
            }
        }
        private void onDelete()
        {
            mdc = new ModelDataContext();

            try
            {
                Model.Matricula matricula = mdc.Matricula.First(matr => matr.idMatricula == int.Parse(tbCodigo.Text.Trim()));
                mdc.Matricula.DeleteOnSubmit(matricula);
                mdc.SubmitChanges();
                Response.Redirect("Matriculas.aspx");
            }
            catch (Exception)
            {


            }
            finally
            {
                mdc.Dispose();
            }


        }
        private void populateFields(int pGetID = 0)
        {

            mdc = new ModelDataContext();
            try
            {

                if (pGetID > 0)
                {
                    Model.Matricula matricula = mdc.Matricula.First(matr => matr.idMatricula == pGetID);

                    tbCodigo.Text = pGetID.ToString();
                    DropDownList1.SelectedValue = matricula.idCurso.ToString();
                    DropDownList2.SelectedValue = matricula.idMateria.ToString();
                    DropDownList3.SelectedValue = matricula.idAluno.ToString();

                }
                else
                {
                    Response.Redirect("Matriculas.aspx");
                }
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                mdc.Dispose();
            }
        }

        protected void LinqDataSource3_Selecting(object sender, LinqDataSourceSelectEventArgs e)
        {

        }

        protected void btn_Excluir(object sender, EventArgs e)
        {
            this.onDelete();
        }
    }
}