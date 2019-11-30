﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using RBI.Object.ObjectMSSQL;
using RBI.BUS.BUSMSSQL;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraSplashScreen;
using RBI.PRE.subForm.InputDataForm;

namespace RBI.PRE.subForm.OutputDataForm
{
    public partial class UCInspectionHistory : UserControl
    {
        public UCInspectionHistory()
        {
            InitializeComponent();
            initData();
        }
        private List<RW_INSPECTION_DETAIL> getData()
        {
            RW_INSPECTION_HISTORY_BUS busInspHis = new RW_INSPECTION_HISTORY_BUS();
            List<RW_INSPECTION_DETAIL> listInspHis = busInspHis.getDataSource();
            List<RW_INSPECTION_DETAIL> listData = new List<RW_INSPECTION_DETAIL>();
            EQUIPMENT_MASTER_BUS busEqMaster = new EQUIPMENT_MASTER_BUS();
            SITES_BUS busSite = new SITES_BUS();
            FACILITY_BUS busFacility = new FACILITY_BUS();
            foreach (RW_INSPECTION_DETAIL inspHis in listInspHis)
            {
          
                int eqID = inspHis.EquipmentID;
                RW_INSPECTION_DETAIL rwInspHis = inspHis;
                rwInspHis.SiteName = busSite.getSiteName(busEqMaster.getSiteID(eqID));
                rwInspHis.FacilityName = busFacility.getFacilityName(busEqMaster.getFacilityID(eqID));
                listData.Add(rwInspHis);
            }
            return listData;
        }
        private void initData()
        {
            SplashScreenManager.ShowForm(typeof(WaitForm2));
            string[] header = { "Sites Name", "Facility Name", "Inspection Plan Name", "Inspection Coverage Name", "Equipment Number", "Component Number", "DM", "Inspection Type", "Inspection Date", "Inspection Effctive" };
            try
            {
                gridControl.DataSource = getData();
                gridView1.Columns.Remove(gridView1.Columns["ID"]);
                try
                {
                    gridView1.BeginSort();
                    GridColumn colSite = gridView1.Columns["SiteName"];
                    GridColumn colFaci = gridView1.Columns["FacilityName"];
                    colSite.GroupIndex = 0;
                    colFaci.GroupIndex = 1;
                }
                finally
                {
                    gridView1.EndSort();
                }
                for (int i = 0; i < header.Length; i++)
                {
                    gridView1.Columns[i].Caption = header[i];
                }
                gridView1.BestFitColumns();
            }
            catch
            {
                // do nothing
            }
            SplashScreenManager.CloseForm();
        }

        private void btnCreate_Click(object sender, EventArgs e)
        {
            frmCreateInspectionPlan create = new frmCreateInspectionPlan();
            create.ShowDialog();
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            frmSearchInspectionPlan search = new frmSearchInspectionPlan();
            search.ShowDialog();
        }

        private void btnAddEdit_Click(object sender, EventArgs e)
        {
            frmInspectionPlanDetail detail = new frmInspectionPlanDetail();
            detail.ShowDialog();
        }
    }
}
