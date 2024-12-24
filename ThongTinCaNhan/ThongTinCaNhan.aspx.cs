using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ThongTinCaNhan
{
    public partial class ThongTinCaNhan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                KhoiTaoDuLieu();
            }
        }

        private void KhoiTaoDuLieu()
        {
            //Khỏi tạo dữ liệu đlTrinhDo
            ddlTrinhDo.Items.Add("Trung cấp");
            ddlTrinhDo.Items.Add("Cao đẳng");
            ddlTrinhDo.Items.Add("Đại học");
            ddlTrinhDo.Items.Add("Sau đại học");

            //Khỏi tạo dữ liệu lstNgheNghiep
            listNgheNghiep.Items.Add("Công nhân");
            listNgheNghiep.Items.Add("Kỹ sư");
            listNgheNghiep.Items.Add("Lập trình viên");
            listNgheNghiep.Items.Add("Kế toán viên");
            listNgheNghiep.Items.Add("Bác sĩ");

            //Khỏi tạo dữ liệu ckbSoThich
            cklSoThich.Items.Add("Xem phim");
            cklSoThich.Items.Add("Ăn nhậu");
            cklSoThich.Items.Add("Ngồi thiền");
            cklSoThich.Items.Add("Đi phượt");
            cklSoThich.Items.Add("Streamer");
        }

        protected void btGui_Click1(object sender, EventArgs e)
        {
            //b1. thu nhập thông tin gửi từ client
            string kq = "<ul>";
            kq += "<li>Họ tên : <b> " + txtHoTen.Text + "</b>";
            kq += string.Format("<li> Ngày sinh <b> {0} </b>", txtNgaySinh.Text);
            if (rdNam.Checked)
            {
                kq += string.Format("<li> Giới tính: <b> {0} </b>", rdNam.Text);
            }
            else
            {
                kq += string.Format("<li> Giới tính: <b> {0} </b>", rdNu.Text);
            }

            kq += string.Format("<li> Trình độ: <b> {0} </b>", ddlTrinhDo.SelectedItem.Text);
            kq += string.Format("<li> Nghề nghiệp: <b> {0} </b>", listNgheNghiep.SelectedItem.Text);

            if (FHinh.HasFile)
            {
                //xử lsy upload file
                string path = Server.MapPath("~/Upload"); //lấy đường dẫn tuyệt đối của thư mục trên máy chủ
                string filename = FHinh.FileName; //Lấy tên file
                FHinh.SaveAs(path + "/" + filename);

                kq += string.Format("<li> Hình: <img src='/Upload/{0}'> 200px", filename);
            }

            kq += "<li> Sở thích: ";
            foreach (ListItem item in cklSoThich.Items)
            {
                if (item.Selected)
                {
                    kq += item.Text + ";";
                }
            }
            kq += "</ul>";

            //b2. gửi thông tin về client
            lbKetQua.Text = kq;
        }
    }
}