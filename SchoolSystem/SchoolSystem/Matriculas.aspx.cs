using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

namespace SchoolSystem
{
    public partial class Matriculas : System.Web.UI.Page
    {
        private ModelDataContext mdc;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.populateGrid();
            }
        }
        private void populateGrid(int pIndex = -1)
        {
            mdc = new ModelDataContext();
            try
            {
                
                var sourceMatricula = from matr in mdc.Matricula
                join cur in mdc.Cursos on matr.idCurso equals cur.idCurso
                join mat in mdc.Materia on matr.idMateria equals mat.idMateria
                join alu in mdc.Aluno on matr.idAluno equals alu.idAluno
                select new { matr.idMatricula, cur.Nomec, mat.Nomem, alu.Nome, matr.dataCadastro };

                switch (pIndex)
                {
                    case 0:
                        {
                            sourceMatricula = from matr in mdc.Matricula
                                          where matr.idMatricula == int.Parse(tbPesqID.Text.Trim())
                                              join cur in mdc.Cursos on matr.idCurso equals cur.idCurso
                                              join mat in mdc.Materia on matr.idMateria equals mat.idMateria
                                              join alu in mdc.Aluno on matr.idAluno equals alu.idAluno
                                              select new { matr.idMatricula, cur.Nomec, mat.Nomem, alu.Nome, matr.dataCadastro };
                            break;
                        }
                    case 1:
                        {
                            sourceMatricula = from matr in mdc.Matricula
                                              //where matr.idCurso == int.Parse(tbPesqCurso.Text.Trim())
                                              join cur in mdc.Cursos on matr.idCurso equals cur.idCurso
                                              join mat in mdc.Materia on matr.idMateria equals mat.idMateria
                                              join alu in mdc.Aluno on matr.idAluno equals alu.idAluno
                                              where cur.Nomec.Contains(tbPesqCurso.Text.Trim())
                                              select new { matr.idMatricula, cur.Nomec, mat.Nomem, alu.Nome, matr.dataCadastro };
                            break;
                        }
                    case 2:
                        {
                            sourceMatricula = from matr in mdc.Matricula
                                              //where matr.idMateria == int.Parse(tbPesqMateria.Text.Trim())
                                              join cur in mdc.Cursos on matr.idCurso equals cur.idCurso
                                              join mat in mdc.Materia on matr.idMateria equals mat.idMateria
                                              join alu in mdc.Aluno on matr.idAluno equals alu.idAluno
                                              where mat.Nomem.Contains(tbPesqMateria.Text.Trim())
                                              select new { matr.idMatricula, cur.Nomec, mat.Nomem, alu.Nome, matr.dataCadastro };
                            break;
                        }
                    case 3:
                        {
                            sourceMatricula = from matr in mdc.Matricula
                                              //where matr.idAluno == int.Parse(tbPesqAluno.Text.Trim())
                                              join cur in mdc.Cursos on matr.idCurso equals cur.idCurso
                                              join mat in mdc.Materia on matr.idMateria equals mat.idMateria
                                              join alu in mdc.Aluno on matr.idAluno equals alu.idAluno
                                              where alu.Nome.Contains(tbPesqAluno.Text.Trim())
                                              select new { matr.idMatricula, cur.Nomec, mat.Nomem, alu.Nome, matr.dataCadastro };
                            break;
                        }

                }

                gwMatriculas.DataSource = sourceMatricula;
                gwMatriculas.DataBind();
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

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            this.populateGrid(rlbTypeSearch.SelectedIndex);
        }
        protected void btnLimpaPesq_Click(object sender, EventArgs e)
        {
            this.populateGrid();
        }
    }
}