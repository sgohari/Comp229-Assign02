﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign02
{
    public partial class survey : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submitt_Click(object sender, EventArgs e)
        {
            if (UsernameTxtBox.Text == "")
            {
                UserTxtBox_RequiredFieldValidator1.Text = "Please fill the Box";
            }
        }
    }
}