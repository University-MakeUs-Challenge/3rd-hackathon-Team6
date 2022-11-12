async function competitionStatus(connection, insertCompetitionStatusParams) {
    const competitionStatusQuery = `
    UPDATE users
    SET competition_status = ?
    WHERE id = ?
    ;`;
    const updateUsersRow = await connection.query(
        competitionStatusQuery, 
        insertCompetitionStatusParams
    );
    
    return updateUsersRow;
  }

  module.exports = {
    competitionStatus
  }