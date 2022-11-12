const userProvider = require("./userProvider");
const userDao = require("./userDao");
const baseResponse = require("../../../config/baseResponseStatus");
const { response } = require("../../../config/response");

exports.createUserBadge = async function (badge) {
    try {
        return response(baseResponse.SUCCESS);

    } catch (error) {

    }
}