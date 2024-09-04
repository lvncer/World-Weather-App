const express = require("express");
const router = express.Router();
const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();

// デフォルトルート
router.get("/", async (req, res) => {
  try {
    const weathers = await prisma.WeatherReport.findMany();

    res.render("weathers", { weathers });
  } catch (error) {
    console.error(error);
    res.status(500).send("Internal Server Error");
  }
});

module.exports = router;
