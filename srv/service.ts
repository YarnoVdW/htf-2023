import cds, { Service } from "@sap/cds/apis/services";

const RangerService = async (srv: Service) => {
  srv.on("READ", "Pollutions", async (req) => {
    const data = req.data,
      { starttime, endtime, room_ID } = data;
  });
};

export default {
  RangerService,
};
