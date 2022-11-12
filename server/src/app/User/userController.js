const userProvider = require("./userProvider");
const baseResponse = require("../../../config/baseResponseStatus");
const { response } = require("../../../config/response");
// 유저 조회
// export const getUser =(req, res)=>{

// }

// 유저 뱃지 조회
// [GET] : /users/:id/badge
export const getBadge=(req,res)=>{
    const id = req.params.id;
    

    return res.send(response(baseResponse.SUCCESS))
}

// 유저 뱃지 부여
// [POST] : /users/:id/badge
export const postBadge = (req,res)=>{
    // body { badge: String }
    const badge = req.body.badge;
    
    return res.send(badgeResponse.SUCCESS);


}

// 유저 점수 조회
// [GET] : /users/:id/score
export const getScore = (req,res)=>{
    
}





// 왕감쟈 코드..
const app = express();

// 유저 뱃지 조회
app.get("./users/{id}/badge", (req, res) => {
    const userId = req.params.id;

    const insertUserBadge = `
        SELECT badge_template.name, badge_template.image_url
        FROM user, badge, badge_template
        WHERE user.id = badge.user_id 
            AND badge.badge_template_id = badge_template.id;
            AND user.id = ?;`
       
    connection.query(insertUserBadge, [userId], (err, rows) => {
        if (err) throw err;
        if (Object.keys(rows).length === 0) {
            res.send(null);
        } else {
            res.send(rows);
        }               
    });
});

// 유저 뱃지 부여
// body { badge : String }
app.post("./users/{id}/badge", (req, res) => {
    const userId = req.params.id;
    const badge = req.body.badge;

    const insertUserBadgeQuery = `
        INSERT INTO badge (user_id, badge_template_id);
        VALUES (?, ?);`

    connection.query(insertUserBadgeQuery, [userId, badge], (err, rows) => {
        if (err) throw err;
    });
});

// 유저 점수 조회
app.get("./users/{id}/score", (req, res) => {
    const userId = req.params.id;
    let baekjoonScore;
    let githubScore;
    let quizScore;

    const selectBaekJoonQuery = `
        SELECT baekjoon.score
        FROM user, baekjoon
        WHERE user.id = baekjoon.user_id;
        `;

    const selectGitHubQuery = `
        SELECT github.score
        FROM user, github
        WHERE user.id = github.user_id;
        `;

    const selectQuizQuery = `
        SELECT quiz.score
        FROM user, quiz
        WHERE user.id = quiz.user_id;
        `;

    // 각 테이블에서 조회해온 점수 세 개 다 더해서 합산 점수 반환
    connection.query(selectBaekJoonQuery, [userId], (err, rows) => {
        if (err) throw err;
        if (rows === 0) {
            res.send(null);
        } else {
            baekjoonScore = rows;
        }               
    });

    connection.query(selectGitHubQuery, [userId], (err, rows) => {
        if (err) throw err;
        if (rows === 0) {
            res.send(null);
        } else {
            githubScore = rows;
        }               
    });

    connection.query(selectQuizQuery, [userId], (err, rows) => {
        if (err) throw err;
        if (rows === 0) {
            res.send(null);
        } else {
            quizScore = rows;
        }               
    });

    const totalScore = baekjoonScore + githubScore + quizScore;

    return totalScore;
});

