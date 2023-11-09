import cds, { Service } from "@sap/cds/apis/services";

const RangerService = async (srv: Service) => {
  srv.on("READ", "Pollutions", async (req) => {
    const data = req.data,
      { ID, description,category_ID, criticality_code, contaminationPercentage, location_id } = data;
      return data;
  });

};

export default {
  RangerService,
};
