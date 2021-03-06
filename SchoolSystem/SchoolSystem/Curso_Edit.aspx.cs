﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

namespace SchoolSystem
{
    public partial class Curo_Edit : System.Web.UI.Page
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
        private void onUpdate()
        {
            mdc = new ModelDataContext();
            try
            {

                {


                    Model.Cursos curso = mdc.Cursos.First(cur => cur.idCurso == int.Parse(tbCodigo.Text.Trim()));
                    curso.Nomec = tbNome.Text.Trim();
                    curso.Descricao = tbDescricao.Text.Trim();                    
                    curso.dataAtualizacao = DateTime.Parse(DateTime.Now.ToShortDateString());

                    mdc.SubmitChanges();
                    Response.Redirect("Curso.aspx");
                }
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
                    Model.Cursos curso = mdc.Cursos.First(cur => cur.idCurso == pGetID);

                    tbCodigo.Text = pGetID.ToString();
                    tbNome.Text = curso.Nomec.Trim();
                    tbDescricao.Text = curso.Descricao.Trim();
                    
                }
                else
                {
                    Response.Redirect("Curso.aspx");
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
        protected void bntAtualizar_Click(object sender, EventArgs e)
        {
            this.onUpdate();
        }
    }
}