using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace WebBMISize
{
    public partial class BMISizeWeb : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // อ่าน XML
                XmlDocument xmlDoc = new XmlDocument();
                xmlDoc.Load(Server.MapPath("~/app_data/gender.xml"));

                // เลือกข้อมูลจาก XML
                XmlNodeList genderNodes = xmlDoc.SelectNodes("//gendersddl/gender");

                // เพิ่มข้อมูลลงใน DropDownList
                foreach (XmlNode genderNode in genderNodes)
                {
                    string genderType = genderNode.SelectSingleNode("Type").InnerText;
                    string imageUrl = genderNode.SelectSingleNode("image").InnerText;

                    genderDropdown.Items.Add(new ListItem(genderType, imageUrl));
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // รหัสที่มีอยู่แล้ว
            localhost.ServiceBMISizq myGG = new localhost.ServiceBMISizq();
            double weight = Convert.ToDouble(TextBox1.Text);
            double height = Convert.ToDouble(TextBox2.Text);
            double age = Convert.ToDouble(TextBox3.Text);
            var size = myGG.GetSize(weight, height, age);
            Label1.Text = size;

        }

        protected void genderDropdown_SelectedIndexChanged(object sender, EventArgs e)
        {
            // รับค่าที่เลือกจาก DropDownList
            string selectedGender = genderDropdown.SelectedItem.Text; // หรือจะใช้ selectedValue ก็ได้ แล้วดึงค่า Type จาก XML

            // อ่าน XML
            XmlDocument xmlDoc = new XmlDocument();
            xmlDoc.Load(Server.MapPath("~/app_data/gender.xml"));

            // ค้นหารูปภาพของเพศที่เลือก
            XmlNode genderNode = xmlDoc.SelectSingleNode($"//gendersddl/gender[Type='{selectedGender}']");
            if (genderNode != null)
            {
                string imageUrl = genderNode.SelectSingleNode("image").InnerText;

                // แสดงรูปภาพ
                Image1.ImageUrl = imageUrl;

                // แสดงคำอธิบายหรืออื่น ๆ ตามที่คุณต้องการ
                // Label1.Text = "Description: " + selectedGender;
            }
            else
            {
                // ถ้าไม่พบข้อมูลเพศที่เลือกใน XML
                Image1.ImageUrl = ""; // หรือจะแสดงรูปภาพเริ่มต้นใหม่ที่นี่
                                      // Label1.Text = "Description: Not Found";
            }
        }

    }
}