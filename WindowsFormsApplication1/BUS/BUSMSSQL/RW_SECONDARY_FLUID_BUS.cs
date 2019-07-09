﻿using RBI.DAL.MSSQL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RBI.Object.ObjectMSSQL;
namespace RBI.BUS.BUSMSSQL
{
    class RW_SECONDARY_FLUID_BUS
    {
        RW_SECONDARY_FLUID_ConnectUtils DAL = new RW_SECONDARY_FLUID_ConnectUtils();
        public void add(RW_SECONDARY_FLUID obj)
        {
            DAL.add(obj.ID, obj.FluidName, obj.NBP, obj.MW, obj.Density, obj.ChemicalFactor, obj.HealthDegree, obj.Flammability, obj.Reactivity);
        }
        public void edit(RW_SECONDARY_FLUID obj)
        {
            DAL.edit(obj.ID, obj.FluidName, obj.NBP, obj.MW, obj.Density, obj.ChemicalFactor, obj.HealthDegree, obj.Flammability, obj.Reactivity);
        }
        public void delete(RW_SECONDARY_FLUID obj)
        {
            DAL.delete(obj.ID);
        }
        public List<RW_SECONDARY_FLUID> getDataSource()
        {
            return DAL.getDataSource();
        }
        public Boolean isExist(int ID)
        {
            return DAL.isExist(ID);

        }

    }
}
