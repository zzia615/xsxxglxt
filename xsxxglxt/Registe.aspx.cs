using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace xsxxglxt
{
    public partial class Registe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string s_id = id.Text;
                string s_name = name.Text;
                string s_age = age.Text;
                
                string sql = string.Format("insert into info(id,name,age)" +
                            "values('{0}','{1}',{2})", s_id, s_name, s_age);

                new SqlServerHelper().ExecuteSql(sql);

                Response.Write("<script>alert('注册学生成功');window.location.href='ShowInfo.aspx'</script>");

            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string s_age = age.Text;
            if (!string.IsNullOrEmpty(s_age)) {
                int i_age = 0;
                if (!int.TryParse(s_age, out i_age))
                {
                    args.IsValid = false;
                }
                else
                {
                    args.IsValid = true;
                }
            }
        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string s_id = id.Text;
            if (!string.IsNullOrEmpty(s_id))
            {
                if (s_id.Length != 8)
                {
                    args.IsValid = false;
                }
                else
                {
                    long l_id = 0;
                    if (!long.TryParse(s_id, out l_id))
                    {
                        args.IsValid = false;
                    }
                    else
                    {
                        args.IsValid = true;
                    }
                }
            }
        }
    }
}