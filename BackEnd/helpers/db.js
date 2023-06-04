const config = require("../config.json");
const mongoose = require("mongoose");
//Connecting to MongoDB database using Mongoose ODM

//Configure options for DB connection
const conenctionOptions = {
  useCreateIndex: true,
  useNewUrlParser: true,
  useUnifiedTopology: true,
  useFindAndModify: false,
};

try {
  mongoose
    .connect(
      process.env.MONGODB_URI || config.connectionString,
      conenctionOptions
    )
    .then((res) => console.log(`MOngoDB connected Successfully..!`));
} catch (error) {
  console.log(`MongoDB Error: `, error.message);
  process.exit(1);
}

//To ensure that mongoose uses same promise implementation as rest of the app
mongoose.Promise = global.Promise;

module.exports = {
  User: require("../models/user"),
};
