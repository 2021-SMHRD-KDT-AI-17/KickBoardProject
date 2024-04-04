/*
playername
playerbackNum
playerposition
playerheight
playerweight
playerbrithday
clubrank
clubgoalplayer_count
clubgoalplayer_player
clubhelpplayer_count
clubhelpplayer_player
*/
const playerName=document.getElementById("playername");
const playerBackNum=document.getElementById("playerbackNum");
const playerPosition=document.getElementById("playerposition");
const playerHeight=document.getElementById("playerheight");
const playerWeight=document.getElementById("playerweight");
const playerBirth=document.getElementById("clubrank");
const clubGoalplayerCNT=document.getElementsByClassName("clubgoalplayer_count");
const clubGoalplayerPLY=document.getElementsByClassName("clubgoalplayer_player");
const clubHelpplayerCNT=document.getElementsByClassName("clubhelpplayer_count");
const clubHelpplayerPLY=document.getElementsByClassName("clubhelpplayer_player");
$(document).ready(function() {
	//선호 선수 선택시
	$('#playerselect').change(function(){
		var selectedPlayer = $('#playerselect option:selected').text();
		$.ajax({
			url:"showPlayer",
			type: "get",
        	data:"playername="+selectedPlayer,
			dataType: 'json',
			success: (data) => {
            clubName.innerText=data.club_name;
            clubLogo.setAttribute('src','resources/assets/images/logos/울산HDFC.png');
            clubFormation.setAttribute('src','resources/assets/images/formation/울산HDFC.png');
            clubRank.innerText=data.club_ranking;
			clubchart(data.club_win, data.club_draw, data.club_defeat);
        },erro:()=>{
            alert("통신오류!");
        }
		})
	});
});