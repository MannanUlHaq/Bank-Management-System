using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Python.Runtime;
using IronPython;

namespace Bank_Management_System
{
    public partial class FaceRecognitionPage : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=jarvis-2020.database.windows.net;Initial Catalog=""Bank Management System"";Persist Security Info=True;User ID=jarvis-2020;Password=Mannan2004@;");

        bool isPythonInitialized = false;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["ErrorMessage"] != null)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "swal('Error', '" + Session["ErrorMessage"].ToString() + "', 'error')", true);
                    Session.Remove("ErrorMessage");
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string imageData = HiddenFieldImageData.Value;

            if (!string.IsNullOrEmpty(imageData))
            {
                string tempDir = Path.GetTempPath();
                string file1 = Path.Combine(tempDir, "image1.jpg");
                string file2 = Path.Combine(tempDir, "image2.jpg");

                byte[] clientPhotoBytes = (byte[])Session["ClientPhoto"];
                File.WriteAllBytes(file1, clientPhotoBytes);

                byte[] bytes = Convert.FromBase64String(imageData.Substring("data:image/jpeg;base64,".Length));
                File.WriteAllBytes(file2, bytes);

                InitializePython();

                using (Py.GIL())
                {
                    dynamic pythonScript1 = Py.Import("MyCode1");
                    dynamic result1 = pythonScript1.DetectFace(file2);

                    bool FaceResult = result1.As<bool>();

                    if (FaceResult)
                    {
                        dynamic pythonScript2 = Py.Import("MyCode2");
                        dynamic result2 = pythonScript2.CheckSimilarity(file1, file2);

                        bool similarityResult = result2.As<bool>();

                        if (similarityResult)
                        {
                            // Voter recognized
                            HttpContext.Current.Response.Redirect("ClientDashboard.aspx");
                        }
                        else
                        {
                            // Face not recognized
                            Session["ErrorMessage"] = "Face not Recognized!";
                            Response.Redirect(Request.RawUrl);
                        }
                    }
                    else
                    {
                        // Face not detected
                        Session["ErrorMessage"] = "Face not Detected!";
                        Response.Redirect(Request.RawUrl);
                    }

                    PythonEngine.Shutdown();
                }
            }
            else
            {
                Session["ErrorMessage"] = "First Capture a Photo!";
                Response.Redirect(Request.RawUrl);
            }
        }

        private void InitializePython()
        {
            if (!isPythonInitialized)
            {
                Runtime.PythonDLL = @"C:\Program Files\Python312\python312.dll";
                PythonEngine.Initialize();
                isPythonInitialized = true;
            }
        }

        protected override void OnUnload(EventArgs e)
        {
            base.OnUnload(e);
            if (isPythonInitialized)
            {
                PythonEngine.Shutdown();
                isPythonInitialized = false;
            }
        }
    }
}