//
// Copyright (C) 2016-present Instructure, Inc.
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, version 3 of the License.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//

// @flow
export type EnrollmentType =
  'StudentEnrollment' |
  // I believe `StudentViewEnrollment` is a legacy thing which
  // teachers could use to view their course as a student.
  'StudentViewEnrollment' |
  'TeacherEnrollment' |
  'TaEnrollment' |
  'DesignerEnrollment' |
  'ObserverEnrollment'

export type EnrollmentState = 'active' | 'invited' | 'inactive'

export type Enrollment = {
  id: string,
  user_id: string,
  user: User,
  type: EnrollmentType,
  enrollment_state: EnrollmentState,
  course_id: string,
  last_activity_at: string,
  course_section_id: string,
  computed_current_grade: string,
}
