'use strict';


// ========================================常用 require start===========================================
const Service = require('egg').Service;

class StudentService extends Service {

  async appendStudentInfoToUserInfo() {
    const studentInfo = await this.app.jianghuKnex('student_basic').where({ studentId: this.ctx.userInfo.user.userId }).first();
    this.ctx.userInfo.studentInfo = studentInfo;
  }

  async appendMenPaiIdToActionData() {
    const studentInfo = await this.app.jianghuKnex('student_basic').where({ studentId: this.ctx.userInfo.user.userId }).first();
    const { menPaiId, menPaiName } = studentInfo;
    this.ctx.request.body.appData.actionData.menPaiId = menPaiId;
    this.ctx.request.body.appData.actionData.menPaiName = menPaiName;
  }

}

module.exports = StudentService;
