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
    
    public partial class sach
    {
        public sach()
        {
            this.muon_tra = new HashSet<muon_tra>();
        }
    
        public int SachID { get; set; }
        public string TenSach { get; set; }
        public int LoaiSachID { get; set; }
        public int TacGiaID { get; set; }
        public int TacGiaDichID { get; set; }
        public int NhaXuatBanID { get; set; }
        public int DonGia { get; set; }
        public int TinhTrangID { get; set; }
        public Nullable<int> NamXuatBan { get; set; }
        public string NoiXuatBan { get; set; }
        public string SoVaoSoTongQuat { get; set; }
        public Nullable<System.DateTime> NgayVaoSoTongQuat { get; set; }
        public string NguonNhap { get; set; }
        public Nullable<System.DateTime> NgayNhap { get; set; }
        public string NguonXuat { get; set; }
        public Nullable<System.DateTime> NgayXuat { get; set; }
        public string MaVach { get; set; }
        public string GhiChu { get; set; }
        public string TomTatNoiDung { get; set; }
        public System.DateTime NgayTao { get; set; }
    
        public virtual loai_sach loai_sach { get; set; }
        public virtual ICollection<muon_tra> muon_tra { get; set; }
        public virtual nha_xuat_ban nha_xuat_ban { get; set; }
        public virtual tac_gia tac_gia { get; set; }
        public virtual tac_gia tac_gia1 { get; set; }
    }
}
