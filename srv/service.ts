import { Service } from "@sap/cds/apis/services";
import cds from "@sap/cds";

export = async (srv: Service) => {
  const rase = await cds.connect.to("edmx");

  srv.on("READ", "Pollutions", (req) => {
    return rase.run(req.query);
  });

  srv.on("READ", "PollutionCategories", (req) => {
    return rase.run(req.query);
  });
};
