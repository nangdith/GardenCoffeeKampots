﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GardenCoffee.Admin
{
    public partial class OrderStatus : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter sda;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["breadCrum"] = "Order Status";
                if (Session["admin"] == null)
                {
                    Response.Redirect("../User/Login.aspx");
                }
                else
                {
                    getOrderStatus();
                }
            }
            lblMsg.Visible = false;
            pUpdateOrderStatus.Visible = false;
        }

        private void getOrderStatus()
        {
            con = new SqlConnection(Connetion.GetConnectionString());
            cmd = new SqlCommand("Invoice", con);
            cmd.Parameters.AddWithValue("@Action", "GETSTATUS");
            cmd.CommandType = CommandType.StoredProcedure;
            sda = new SqlDataAdapter(cmd);
            dt = new DataTable();
            sda.Fill(dt);
            rOrderStatus.DataSource = dt;
            rOrderStatus.DataBind();
        }
        protected void rOrderStatus_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            lblMsg.Visible = false;
            if (e.CommandName == "edit")
            {
                con = new SqlConnection(Connetion.GetConnectionString());
                cmd = new SqlCommand("Invoice", con);
                cmd.Parameters.AddWithValue("@Action", "STATUSBYID");
                cmd.Parameters.AddWithValue("@OrderDetailsId", e.CommandArgument);
                cmd.CommandType = CommandType.StoredProcedure;
                sda = new SqlDataAdapter(cmd);
                dt = new DataTable();
                sda.Fill(dt);
                ddlOrderStatus.SelectedValue = dt.Rows[0]["Status"].ToString();
                hdnId.Value = dt.Rows[0]["OrderDetailsId"].ToString();
                pUpdateOrderStatus.Visible = false;
                LinkButton btn = e.Item.FindControl("lnkEdit") as LinkButton;
                btn.CssClass = "badge badge-warning";
            }
        }


        protected void btnUpdate_Click(object sender, EventArgs e)
        {

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {

        }

    }
}