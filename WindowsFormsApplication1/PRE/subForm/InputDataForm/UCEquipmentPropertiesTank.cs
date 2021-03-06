 using System;
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
using RBI.Object;
using RBI.BUS.BUSMSSQL_CAL;   

namespace RBI.PRE.subForm.InputDataForm
{
    public partial class UCEquipmentPropertiesTank : UserControl
    {
        #region Parameter
        string[] itemsAdjustmentSettlement = { "Recorded settlement exceeds API 653 criteria", "Recorded settlement meets API 653 criteria", "Settlement never evaluated", "Concrete foundation, no settlement" };
        string[] itemsExternalEnvironment = { "Arid/dry", "Marine", "Severe", "Temperate"};
        string[] itemsOnlineMonitoring = {  "Amine high velocity corrosion - Corrosion coupons",
                                            "Amine high velocity corrosion - Electrical resistance probes",
                                            "Amine high velocity corrosion - Key process variable",
                                            "Amine low velocity corrosion - Corrosion coupons",
                                            "Amine low velocity corrosion - Electrical resistance probes",
                                            "Amine low velocity corrosion - Key process variable",
                                            "HCI corrosion - Corrosion coupons",
                                            "HCI corrosion - Electrical resistance probes",
                                            "HCI corrosion - Key process variable",
                                            "HCI corrosion - Key process variable & Electrical resistance probes",
                                            "HF corrosion - Corrosion coupons",
                                            "HF corrosion - Electrical resistance probes",
                                            "HF corrosion - Key process variable",
                                            "High temperature H2S/H2 corrosion - Corrosion coupons",
                                            "High temperature H2S/H2 corrosion - Electrical resistance probes",
                                            "High temperature H2S/H2 corrosion - Key process parameters",
                                            "High temperature Sulfidic / Naphthenic acid corrosion - Corrosion coupons",
                                            "High temperature Sulfidic / Naphthenic acid corrosion - Electrical resistance probes",
                                            "High temperature Sulfidic / Naphthenic acid corrosion - Key process variable",
                                            "No online monitoring",
                                            "Other corrosion - Corrosion coupons",
                                            "Other corrosion - Electrical resistance probes",
                                            "Other corrosion - Key process variable",
                                            "Sour water high velocity corrosion - Corrosion coupons",
                                            "Sour water high velocity corrosion - Electrical resistance probes",
                                            "Sour water high velocity corrosion - Key process variable",
                                            "Sour water low velocity corrosion - Corrosion coupons",
                                            "Sour water low velocity corrosion - Electrical resistance probes",
                                            "Sour water low velocity corrosion - Key process variable",
                                            "Sulfuric acid (H2S/H2) corrosion high velocity - Corrosion coupons",
                                            "Sulfuric acid (H2S/H2) corrosion high velocity - Electrical resistance probes",
                                            "Sulfuric acid (H2S/H2) corrosion high velocity - Key process parameters",
                                            "Sulfuric acid (H2S/H2) corrosion high velocity - Key process parameters & electrical resistance probes",
                                            "Sulfuric acid (H2S/H2) corrosion low velocity - Corrosion coupons",
                                            "Sulfuric acid (H2S/H2) corrosion low velocity - Electrical resistance probes",
                                            "Sulfuric acid (H2S/H2) corrosion low velocity - Key process parameters"};
        string[] itemsThermalHistory = { "None", "Solution Annealed", "Stabilised After Welding", "Stabilised Before Welding" };
        string[] itemsEnvironmental = { "High", "Medium", "Low" };
        string[] itemsTypeSoil = { "Coarse Sand", "Fine Sand", "Very Fane Sand", "Silt", "Sandy Clay", "Clay", "Concrete-Asphalt", "Gravel"};
        #endregion
        BUS_UNITS convUnit = new BUS_UNITS();
        public UCEquipmentPropertiesTank(int ID, string type, string temUnit, string volumeUnit)
        {
            InitializeComponent();
            additemsAdjustmentSettlement();
            additemsExternalEnvironment();
            additemsOnlineMonitoring();
            additemsThermalHistory();
            additemsEnvironmental();
            ShowDataToControl(ID, temUnit, volumeUnit);
            if (type == "Shell")
                txtDistanceGroundWater.Enabled = false;
            changeUnit(temUnit, volumeUnit);
        }
        #region change unit
        private void changeUnit(string temUnit, string volumeUnit)
        {
            switch (temUnit)
            {
                case "DEG_C":
                    lblMinReqTem.Text = "⁰C";
                    break;
                case "DEG_F":
                    lblMinReqTem.Text = "⁰F";
                    break;
                case "K":
                    lblMinReqTem.Text = "K";
                    break;
            }
            switch (volumeUnit)
            {
                case "M3":
                    lblVolume.Text = "m³";
                    break;
                case "FT3":
                    lblVolume.Text = "ft³";
                    break;
            }
        }
        #endregion
        public void ShowDataToControl(int ID, string temUnit, string volumeUnit)
        {
            RW_EQUIPMENT_BUS bus = new RW_EQUIPMENT_BUS();
            RW_EQUIPMENT eq = bus.getData(ID);
            chkAministrativeControl.Checked = Convert.ToBoolean(eq.AdminUpsetManagement);
            chkDowntimeProtection.Checked = Convert.ToBoolean(eq.DowntimeProtectionUsed);
            for (int i = 0; i < itemsAdjustmentSettlement.Length; i++)
            {
                if (eq.ExternalEnvironment == itemsAdjustmentSettlement[i])
                {
                    cbAdjustmentSettlement.SelectedIndex = i + 1;
                    break;
                }
            }
            chkHeatTraced.Checked = Convert.ToBoolean(eq.HeatTraced);
            chkInterfaceSoilWater.Checked = Convert.ToBoolean(eq.InterfaceSoilWater);
            chkLinerOnlineMonitoring.Checked = Convert.ToBoolean(eq.LinerOnlineMonitoring);
            chkMaterialExposedFluid.Checked = Convert.ToBoolean(eq.MaterialExposedToClExt);
            if (temUnit == "DEG_C") txtMinRequiredTemperature.Text = eq.MinReqTemperaturePressurisation.ToString();
            else if (temUnit == "DEG_F") txtMinRequiredTemperature.Text = (convUnit.CelToFah(eq.MinReqTemperaturePressurisation)).ToString(); // mai
            else txtMinRequiredTemperature.Text = (convUnit.CelToKenvin(eq.MinReqTemperaturePressurisation)).ToString(); // mai
            for (int i = 0; i < itemsOnlineMonitoring.Length; i++)
            {
                if (eq.OnlineMonitoring == itemsOnlineMonitoring[i])
                {
                    cbOnlineMonitoring.SelectedIndex = i + 1;
                    break;
                }
            }
            chkPresenceSulphideOperation.Checked = Convert.ToBoolean(eq.PresenceSulphidesO2);
            chkPresenceSulphideShutdown.Checked = Convert.ToBoolean(eq.PresenceSulphidesO2Shutdown);
            chkPressurisationControlled.Checked = Convert.ToBoolean(eq.PressurisationControlled);
            chkPWHT.Checked = Convert.ToBoolean(eq.PWHT);
            chkSteamedOutPriorWaterFlushing.Checked = Convert.ToBoolean(eq.SteamOutWaterFlush);
            numSystemManagementFactor.Value = (decimal)eq.ManagementFactor;
            for (int i = 0; i < itemsThermalHistory.Length; i++)
            {
                if (eq.ThermalHistory == itemsThermalHistory[i])
                {
                    cbThermalHistory.SelectedIndex = i + 1;
                    break;
                }
            }
            if (volumeUnit == "m3") txtEquipmentVolume.Text = eq.Volume.ToString(); //mai
            else if (volumeUnit == "ft3") txtEquipmentVolume.Text = (eq.Volume / convUnit.ft3).ToString(); // mai

            for (int i = 0; i < itemsExternalEnvironment.Length; i++ )
            {
                if(eq.ExternalEnvironment == itemsExternalEnvironment[i])
                {
                    cbExternalEnviroment.SelectedIndex = i + 1;
                    break;
                }
            }
            for (int i = 0; i < itemsTypeSoil.Length; i++)
            {
                if (eq.TypeOfSoil == itemsTypeSoil[i])
                {
                    cbTypeSoild.SelectedIndex = i + 1;
                    break;
                }
            }
            for (int i = 0; i < itemsEnvironmental.Length; i++)
            {
                if (eq.EnvironmentSensitivity == itemsEnvironmental[i])
                {
                    cbEnvironmentalSensitivity.SelectedIndex = i + 1;
                    break;
                }
            }
            for (int i = 0; i < itemsAdjustmentSettlement.Length; i++)
            {
                if (eq.AdjustmentSettle == itemsAdjustmentSettlement[i])
                {
                    cbAdjustmentSettlement.SelectedIndex = i + 1;
                    break;
                }
            }
            chkComponentWelded.Checked = Convert.ToBoolean(eq.ComponentIsWelded);
            chkTankMaintainedAccordance.Checked = Convert.ToBoolean(eq.TankIsMaintained);
            txtDistanceGroundWater.Text = eq.DistanceToGroundWater.ToString();
        }
        public RW_EQUIPMENT getData(int ID, string temUnit, string volUnit)
        {
            RW_EQUIPMENT eq = new RW_EQUIPMENT();
            eq.ID = ID;
            eq.AdminUpsetManagement = chkAministrativeControl.Checked ? 1 : 0;
            eq.DowntimeProtectionUsed = chkDowntimeProtection.Checked ? 1 : 0;
            eq.ExternalEnvironment = cbAdjustmentSettlement.Text;
            eq.HeatTraced = chkHeatTraced.Checked ? 1 : 0;
            eq.InterfaceSoilWater = chkInterfaceSoilWater.Checked ? 1 : 0;
            eq.LinerOnlineMonitoring = chkLinerOnlineMonitoring.Checked ? 1 : 0;
            eq.MaterialExposedToClExt = chkMaterialExposedFluid.Checked ? 1 : 0;
            if (temUnit == "DEG_C") eq.MinReqTemperaturePressurisation = txtMinRequiredTemperature.Text != "" ? float.Parse(txtMinRequiredTemperature.Text) : 0;
            else if (temUnit == "DEG_F") eq.MinReqTemperaturePressurisation = txtMinRequiredTemperature.Text != "" ? (float)convUnit.FahToCel(double.Parse(txtMinRequiredTemperature.Text)) : 0; // mai
            else eq.MinReqTemperaturePressurisation = txtMinRequiredTemperature.Text != "" ? (float)convUnit.KenvinToCel(double.Parse(txtMinRequiredTemperature.Text)) : 0; // mai
            eq.OnlineMonitoring = cbOnlineMonitoring.Text;
            eq.PresenceSulphidesO2 = chkPresenceSulphideOperation.Checked ? 1 : 0;
            eq.PresenceSulphidesO2Shutdown = chkPresenceSulphideShutdown.Checked ? 1 : 0;
            eq.PressurisationControlled = chkPressurisationControlled.Checked ? 1 : 0;
            eq.PWHT = chkPWHT.Checked ? 1 : 0;
            eq.SteamOutWaterFlush = chkSteamedOutPriorWaterFlushing.Checked ? 1 : 0;
            eq.ManagementFactor = (float)numSystemManagementFactor.Value;
            eq.ThermalHistory = cbThermalHistory.Text;
            if (volUnit == "M3") eq.Volume = txtEquipmentVolume.Text != "" ? float.Parse(txtEquipmentVolume.Text) : 0;
            else eq.Volume = txtMinRequiredTemperature.Text != "" ? (float)(double.Parse(txtEquipmentVolume.Text) * convUnit.ft3) : 0; // mai
            
            eq.TypeOfSoil = cbTypeSoild.Text;
            eq.EnvironmentSensitivity = cbEnvironmentalSensitivity.Text;
            eq.AdjustmentSettle = cbAdjustmentSettlement.Text;
            eq.ComponentIsWelded = chkComponentWelded.Checked ? 1 : 0;
            eq.TankIsMaintained = chkTankMaintainedAccordance.Checked ? 1 : 0;
            //tank shell
            //tank bottom
            eq.DistanceToGroundWater = txtDistanceGroundWater.Text != "" ? float.Parse(txtDistanceGroundWater.Text) : 0;
            return eq;
        }

        #region Data to Combobox
        private void additemsAdjustmentSettlement()
        {
            cbAdjustmentSettlement.Properties.Items.Add("", -1, -1);
            for(int i = 0; i < itemsAdjustmentSettlement.Length; i++)
            {
                cbAdjustmentSettlement.Properties.Items.Add(itemsAdjustmentSettlement[i], i, i);
            }
        }
        private void additemsOnlineMonitoring()
        {
            cbOnlineMonitoring.Properties.Items.Add("", -1, -1);
            for(int i = 0 ;  i < itemsOnlineMonitoring.Length; i++)
            {
                cbOnlineMonitoring.Properties.Items.Add(itemsOnlineMonitoring[i], i, i);
            }
        }
        private void additemsExternalEnvironment()
        {
            cbExternalEnviroment.Properties.Items.Add("", -1, -1);
            for(int i = 0; i < itemsExternalEnvironment.Length; i++)
            {
                cbExternalEnviroment.Properties.Items.Add(itemsExternalEnvironment[i], i, i);
            }
        }
        private void additemsThermalHistory()
        {
            cbThermalHistory.Properties.Items.Add("", -1, -1);
            for(int i = 0; i< itemsThermalHistory.Length;i++)
            {
                cbThermalHistory.Properties.Items.Add(itemsThermalHistory[i], i, i);
            }
        }
        private void additemsEnvironmental()
        {
            cbEnvironmentalSensitivity.Properties.Items.Add("", -1, -1);
            for(int i = 0; i < itemsEnvironmental.Length; i++)
            {
                cbEnvironmentalSensitivity.Properties.Items.Add(itemsEnvironmental[i], i, i);
            }
        }
        #endregion
        public RW_INPUT_CA_TANK getDataforTank(int ID)
        {
            RW_INPUT_CA_TANK tank = new RW_INPUT_CA_TANK();
            tank.ID = ID;
            tank.Environ_Sensitivity = cbEnvironmentalSensitivity.Text;
            tank.SW = txtDistanceGroundWater.Text != "" ? float.Parse(txtDistanceGroundWater.Text) : 0;
            tank.Soil_Type = cbTypeSoild.Text;
            return tank;
        }

        private void txtDistanceGroundWater_KeyPress(object sender, KeyPressEventArgs e)
        {
            string a = txtDistanceGroundWater.Text;
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar) && (e.KeyChar != '.'))
            {
                e.Handled = true;
            }
            if (a.Contains('.') && e.KeyChar == '.')
            {
                e.Handled = true;
            }
        }

        private void txtMinRequiredTemperature_KeyPress(object sender, KeyPressEventArgs e)
        {
            string a = txtMinRequiredTemperature.Text;
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar) && (e.KeyChar != '.'))
            {
                e.Handled = true;
            }
            if (a.Contains('.') && e.KeyChar == '.')
            {
                e.Handled = true;
            }
        }

        private void txtEquipmentVolume_KeyPress(object sender, KeyPressEventArgs e)
        {
            string a = txtEquipmentVolume.Text;
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar) && (e.KeyChar != '.'))
            {
                e.Handled = true;
            }
            if (a.Contains('.') && e.KeyChar == '.')
            {
                e.Handled = true;
            }
        }
        #region Xu ly su kien khi data thay doi
        private int datachange = 0;
        private int ctrlSpress = 0;
        public event DataUCChangedHanlder DataChanged;
        public event CtrlSHandler CtrlS_Press;
        public int DataChange
        {
            get { return datachange; }
            set
            {
                datachange = value;
                OnDataChanged(new DataUCChangedEventArgs(datachange));
            }
        }
        public int CtrlSPress
        {
            get { return ctrlSpress; }
            set
            {
                datachange = value;
                OnCtrlS_Press(new CtrlSPressEventArgs(ctrlSpress));
            }
        }
        protected virtual void OnDataChanged(DataUCChangedEventArgs e)
        {
            if (DataChanged != null)
                DataChanged(this, e);
        }
        protected virtual void OnCtrlS_Press(CtrlSPressEventArgs e)
        {
            if (CtrlS_Press != null)
                CtrlS_Press(this, e);
        }
        private void txtDistanceGroundWater_TextChanged(object sender, EventArgs e)
        {
            DataChange++;
        }

        private void chkAministrativeControl_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Control && e.KeyCode == Keys.S)
            {
                CtrlSPress++;
            }
        }

        #endregion

        #region Hidden Button
        private void label30_Click(object sender, EventArgs e)
        {
            if (lblGenericProperties.Text == "▼ Generic Properties")
            {
                pnlGenericProperties.Height = 155;
                lblGenericProperties.Text = "▶ Generic Properties";

                pnlThinningDF.Top = pnlGenericProperties.Top + pnlGenericProperties.Height + 13;
                pnlExternalDF.Top = pnlThinningDF.Top + pnlThinningDF.Height + 13;
                pnlStressCorrosionCrackingDF.Top = pnlExternalDF.Top + pnlExternalDF.Height + 13;
                pnlBrittle.Top = pnlStressCorrosionCrackingDF.Top + pnlStressCorrosionCrackingDF.Height + 13;
                pnlTankConsequence.Top = pnlBrittle.Top + pnlBrittle.Height + 13;


            }
            else if (lblGenericProperties.Text == "▶ Generic Properties")
            {
                pnlGenericProperties.Height = 21;
                lblGenericProperties.Text = "▼ Generic Properties";

                pnlThinningDF.Top = pnlGenericProperties.Top + pnlGenericProperties.Height + 13;
                pnlExternalDF.Top = pnlThinningDF.Top + pnlThinningDF.Height + 13;
                pnlStressCorrosionCrackingDF.Top = pnlExternalDF.Top + pnlExternalDF.Height + 13;
                pnlBrittle.Top = pnlStressCorrosionCrackingDF.Top + pnlStressCorrosionCrackingDF.Height + 13;
                pnlTankConsequence.Top = pnlBrittle.Top + pnlBrittle.Height + 13;
            }
        }

        private void lblThinningDF_Click(object sender, EventArgs e)
        {
            if (lblThinningDF.Text == "▼ Governing Thinning Damage Factor Properties")
            {
                pnlThinningDF.Height = 56;
                lblThinningDF.Text = "▶ Governing Thinning Damage Factor Properties";

                pnlExternalDF.Top = pnlThinningDF.Top + pnlThinningDF.Height + 13;
                pnlStressCorrosionCrackingDF.Top = pnlExternalDF.Top + pnlExternalDF.Height + 13;
                pnlBrittle.Top = pnlStressCorrosionCrackingDF.Top + pnlStressCorrosionCrackingDF.Height + 13;
                pnlTankConsequence.Top = pnlBrittle.Top + pnlBrittle.Height + 13;

            }
            else if (lblThinningDF.Text == "▶ Governing Thinning Damage Factor Properties")
            {
                pnlThinningDF.Height = 21;
                lblThinningDF.Text = "▼ Governing Thinning Damage Factor Properties";

                pnlExternalDF.Top = pnlThinningDF.Top + pnlThinningDF.Height + 13;
                pnlStressCorrosionCrackingDF.Top = pnlExternalDF.Top + pnlExternalDF.Height + 13;
                pnlBrittle.Top = pnlStressCorrosionCrackingDF.Top + pnlStressCorrosionCrackingDF.Height + 13;
                pnlTankConsequence.Top = pnlBrittle.Top + pnlBrittle.Height + 13;
            }
        }

        private void lblExternalDF_Click(object sender, EventArgs e)
        {
            if (lblExternalDF.Text == "▼ Governing External Damage Factor Properties")
            {
                pnlExternalDF.Height = 106;
                lblExternalDF.Text = "▶ Governing External Damage Factor Properties";

                pnlStressCorrosionCrackingDF.Top = pnlExternalDF.Top + pnlExternalDF.Height + 13;
                pnlBrittle.Top = pnlStressCorrosionCrackingDF.Top + pnlStressCorrosionCrackingDF.Height + 13;
                pnlTankConsequence.Top = pnlBrittle.Top + pnlBrittle.Height + 13;

            }
            else if (lblExternalDF.Text == "▶ Governing External Damage Factor Properties")
            {
                pnlExternalDF.Height = 21;
                lblExternalDF.Text = "▼ Governing External Damage Factor Properties";

                pnlStressCorrosionCrackingDF.Top = pnlExternalDF.Top + pnlExternalDF.Height + 13;
                pnlBrittle.Top = pnlStressCorrosionCrackingDF.Top + pnlStressCorrosionCrackingDF.Height + 13;
                pnlTankConsequence.Top = pnlBrittle.Top + pnlBrittle.Height + 13;
            }
        }

        private void lblStressCorrosionCrackingDF_Click(object sender, EventArgs e)
        {
            if (lblStressCorrosionCrackingDF.Text == "▼ Governing Stress Corrosion Creacking Damage Factor Properties")
            {
                pnlStressCorrosionCrackingDF.Height = 162;
                lblStressCorrosionCrackingDF.Text = "▶ Governing Stress Corrosion Creacking Damage Factor Properties";

                pnlBrittle.Top = pnlStressCorrosionCrackingDF.Top + pnlStressCorrosionCrackingDF.Height + 13;
                pnlTankConsequence.Top = pnlBrittle.Top + pnlBrittle.Height + 13;
            }
            else if (lblStressCorrosionCrackingDF.Text == "▶ Governing Stress Corrosion Creacking Damage Factor Properties")
            {
                pnlStressCorrosionCrackingDF.Height = 21;
                lblStressCorrosionCrackingDF.Text = "▼ Governing Stress Corrosion Creacking Damage Factor Properties";

                pnlBrittle.Top = pnlStressCorrosionCrackingDF.Top + pnlStressCorrosionCrackingDF.Height + 13;
                pnlTankConsequence.Top = pnlBrittle.Top + pnlBrittle.Height + 13;
            }
        }

        private void lblBrittle_Click(object sender, EventArgs e)
        {
            if (lblBrittle.Text == "▼ Governing Brittle Fracture Damage Factory Properties")
            {
                pnlBrittle.Height = 107;
                lblBrittle.Text = "▶ Governing Brittle Fracture Damage Factory Properties";

                pnlTankConsequence.Top = pnlBrittle.Top + pnlBrittle.Height + 13;
            }
            else if (lblBrittle.Text == "▶ Governing Brittle Fracture Damage Factory Properties")
            {
                pnlBrittle.Height = 21;
                lblBrittle.Text = "▼ Governing Brittle Fracture Damage Factory Properties";

                pnlTankConsequence.Top = pnlBrittle.Top + pnlBrittle.Height + 13;
            }
        }

        private void lblTankConsequence_Click(object sender, EventArgs e)
        {
            if (lblTankConsequence.Text == "▼ Tank Consequence of Faifure Properties")
            {
                pnlTankConsequence.Height = 99;
                lblTankConsequence.Text= "▶ Tank Consequence of Faifure Properties";
            }
            else if (lblTankConsequence.Text == "▶ Tank Consequence of Faifure Properties")
            {
                pnlTankConsequence.Height = 21;
                lblTankConsequence.Text = "▼ Tank Consequence of Faifure Properties";
            }
        }

        private void UCEquipmentPropertiesTank_Load(object sender, EventArgs e)
        {
            pnlGenericProperties.Height = 21;
            pnlThinningDF.Top = pnlGenericProperties.Top + pnlGenericProperties.Height + 13;

            pnlThinningDF.Height = 21;
            pnlExternalDF.Top = pnlThinningDF.Top + pnlThinningDF.Height + 13;

            pnlExternalDF.Height = 21;
            pnlStressCorrosionCrackingDF.Top = pnlExternalDF.Top + pnlExternalDF.Height + 13;

            pnlStressCorrosionCrackingDF.Height = 21;
            pnlBrittle.Top = pnlStressCorrosionCrackingDF.Top + pnlStressCorrosionCrackingDF.Height + 13;

            pnlBrittle.Height = 21;
            pnlTankConsequence.Top = pnlBrittle.Top + pnlBrittle.Height + 13;

            pnlTankConsequence.Height = 21;
        }
        #endregion
    }
}
