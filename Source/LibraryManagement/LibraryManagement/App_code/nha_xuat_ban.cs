//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace LibraryManagement.App_code
{
    using System;
    using System.Collections.Generic;
    
    public partial class nha_xuat_ban
    {
        public nha_xuat_ban()
        {
            this.saches = new HashSet<sach>();
        }
    
        public int NhaXuatBanID { get; set; }
        public string TenNhaXuatBan { get; set; }
        public string MoTa { get; set; }
        public System.DateTime NgayTao { get; set; }
    
        public virtual ICollection<sach> saches { get; set; }
    }
}