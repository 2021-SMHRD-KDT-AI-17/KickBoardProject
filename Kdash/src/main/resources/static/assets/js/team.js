$(document).ready(function() {
    // 선호 구단 선택 시
    $('#teamselect').change(function() {
      var selectedTeam = $('#teamselect option:selected').val();
      console.log(selectedTeam);
    });
});