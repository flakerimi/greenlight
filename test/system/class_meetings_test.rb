require "application_system_test_case"

class ClassMeetingsTest < ApplicationSystemTestCase
  setup do
    @class_meeting = class_meetings(:one)
  end

  test "visiting the index" do
    visit class_meetings_url
    assert_selector "h1", text: "Class Meetings"
  end

  test "creating a Class meeting" do
    visit class_meetings_url
    click_on "New Class Meeting"

    fill_in "End time", with: @class_meeting.end_time
    fill_in "Name", with: @class_meeting.name
    fill_in "Start time", with: @class_meeting.start_time
    fill_in "Student", with: @class_meeting.student_id
    fill_in "Teacher", with: @class_meeting.teacher_id
    click_on "Create Class meeting"

    assert_text "Class meeting was successfully created"
    click_on "Back"
  end

  test "updating a Class meeting" do
    visit class_meetings_url
    click_on "Edit", match: :first

    fill_in "End time", with: @class_meeting.end_time
    fill_in "Name", with: @class_meeting.name
    fill_in "Start time", with: @class_meeting.start_time
    fill_in "Student", with: @class_meeting.student_id
    fill_in "Teacher", with: @class_meeting.teacher_id
    click_on "Update Class meeting"

    assert_text "Class meeting was successfully updated"
    click_on "Back"
  end

  test "destroying a Class meeting" do
    visit class_meetings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Class meeting was successfully destroyed"
  end
end
