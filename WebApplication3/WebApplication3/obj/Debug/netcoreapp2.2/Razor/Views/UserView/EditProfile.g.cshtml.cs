#pragma checksum "C:\Users\ASUS\source\repos\WebApplication3\WebApplication3\Views\UserView\EditProfile.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "543b67dc3d59ce8ccc42ca8f82a45bb12b487bf7"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_UserView_EditProfile), @"mvc.1.0.view", @"/Views/UserView/EditProfile.cshtml")]
[assembly:global::Microsoft.AspNetCore.Mvc.Razor.Compilation.RazorViewAttribute(@"/Views/UserView/EditProfile.cshtml", typeof(AspNetCore.Views_UserView_EditProfile))]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"543b67dc3d59ce8ccc42ca8f82a45bb12b487bf7", @"/Views/UserView/EditProfile.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"e0cfabe0b49a2ea3b364ec6f27b5c32b3c3b437b", @"/Views/_ViewImports.cshtml")]
    public class Views_UserView_EditProfile : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<WebApplication3.Models.Utilizador>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "getOpcoes", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#line 2 "C:\Users\ASUS\source\repos\WebApplication3\WebApplication3\Views\UserView\EditProfile.cshtml"
  
    ViewData["Title"] = "EditProfile";

#line default
#line hidden
            BeginContext(89, 162, true);
            WriteLiteral("\r\n<h1>Profile Edition</h1>\r\n<p><b>Diets:</b> 1 - Vegan, 2 - Vegetarian, 3 - Lactose-free, 4 - Other</p>\r\n<hr />\r\n\r\n<div class=\"row\">\r\n    <div class=\"col-md-4\">\r\n");
            EndContext();
#line 12 "C:\Users\ASUS\source\repos\WebApplication3\WebApplication3\Views\UserView\EditProfile.cshtml"
         if (TempData["Success"] != null)
        {

#line default
#line hidden
            BeginContext(305, 43, true);
            WriteLiteral("            <p class=\"alert alert-success\">");
            EndContext();
            BeginContext(349, 19, false);
#line 14 "C:\Users\ASUS\source\repos\WebApplication3\WebApplication3\Views\UserView\EditProfile.cshtml"
                                      Write(TempData["Success"]);

#line default
#line hidden
            EndContext();
            BeginContext(368, 6, true);
            WriteLiteral("</p>\r\n");
            EndContext();
#line 15 "C:\Users\ASUS\source\repos\WebApplication3\WebApplication3\Views\UserView\EditProfile.cshtml"
        }

#line default
#line hidden
            BeginContext(385, 8, true);
            WriteLiteral("        ");
            EndContext();
#line 16 "C:\Users\ASUS\source\repos\WebApplication3\WebApplication3\Views\UserView\EditProfile.cshtml"
         if (TempData["Fail"] != null)
        {

#line default
#line hidden
            BeginContext(436, 42, true);
            WriteLiteral("            <p class=\"alert alert-danger\">");
            EndContext();
            BeginContext(479, 16, false);
#line 18 "C:\Users\ASUS\source\repos\WebApplication3\WebApplication3\Views\UserView\EditProfile.cshtml"
                                     Write(TempData["Fail"]);

#line default
#line hidden
            EndContext();
            BeginContext(495, 6, true);
            WriteLiteral("</p>\r\n");
            EndContext();
#line 19 "C:\Users\ASUS\source\repos\WebApplication3\WebApplication3\Views\UserView\EditProfile.cshtml"
        }

#line default
#line hidden
            BeginContext(512, 2, true);
            WriteLiteral("\r\n");
            EndContext();
#line 21 "C:\Users\ASUS\source\repos\WebApplication3\WebApplication3\Views\UserView\EditProfile.cshtml"
         using (Html.BeginForm("EditarPerfil", "UserView", new { nome = ViewBag.nome, password = ViewBag.password, regimeAlimentar = ViewBag.regimeAlimentar }, FormMethod.Post))
        {
            

#line default
#line hidden
            BeginContext(717, 28, false);
#line 23 "C:\Users\ASUS\source\repos\WebApplication3\WebApplication3\Views\UserView\EditProfile.cshtml"
       Write(Html.ValidationSummary(true));

#line default
#line hidden
            EndContext();
            BeginContext(747, 85, true);
            WriteLiteral("            <fieldset>\r\n                <b>Name</b> <p><input type=\"text\" name=\"nome\"");
            EndContext();
            BeginWriteAttribute("value", " value=", 832, "", 852, 1);
#line 25 "C:\Users\ASUS\source\repos\WebApplication3\WebApplication3\Views\UserView\EditProfile.cshtml"
WriteAttributeValue("", 839, ViewBag.nome, 839, 13, false);

#line default
#line hidden
            EndWriteAttribute();
            BeginContext(852, 88, true);
            WriteLiteral(" /></p>\r\n                <span><b>Password</b> <p><input type=\"password\" name=\"password\"");
            EndContext();
            BeginWriteAttribute("value", " value=", 940, "", 964, 1);
#line 26 "C:\Users\ASUS\source\repos\WebApplication3\WebApplication3\Views\UserView\EditProfile.cshtml"
WriteAttributeValue("", 947, ViewBag.password, 947, 17, false);

#line default
#line hidden
            EndWriteAttribute();
            BeginContext(964, 129, true);
            WriteLiteral(" class=\"ux-password-show-hide\" /></p></span>\r\n                <b>RegimeAlimentar</b> <p><input type=\"text\" name=\"regimeAlimentar\"");
            EndContext();
            BeginWriteAttribute("value", " value=", 1093, "", 1124, 1);
#line 27 "C:\Users\ASUS\source\repos\WebApplication3\WebApplication3\Views\UserView\EditProfile.cshtml"
WriteAttributeValue("", 1100, ViewBag.regimeAlimentar, 1100, 24, false);

#line default
#line hidden
            EndWriteAttribute();
            BeginContext(1124, 174, true);
            WriteLiteral(" /></p>\r\n            </fieldset>\r\n            <p> <input type=\"submit\" value=\"Submit changes\" class=\"btn btn-default btn-primary\" /> </p>\r\n            <div>\r\n                ");
            EndContext();
            BeginContext(1298, 47, false);
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "543b67dc3d59ce8ccc42ca8f82a45bb12b487bf77996", async() => {
                BeginContext(1324, 17, true);
                WriteLiteral("Back to User Menu");
                EndContext();
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            EndContext();
            BeginContext(1345, 22, true);
            WriteLiteral("\r\n            </div>\r\n");
            EndContext();
#line 33 "C:\Users\ASUS\source\repos\WebApplication3\WebApplication3\Views\UserView\EditProfile.cshtml"
        }

#line default
#line hidden
            BeginContext(1378, 18, true);
            WriteLiteral("    </div>\r\n</div>");
            EndContext();
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<WebApplication3.Models.Utilizador> Html { get; private set; }
    }
}
#pragma warning restore 1591
