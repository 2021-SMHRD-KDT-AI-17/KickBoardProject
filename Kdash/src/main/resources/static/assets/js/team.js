/*
clubround
clubname
clublogo
clubformation
clubrank
clubgoalplayer_count
clubgoalplayer_player
clubhelpplayer_count
clubhelpplayer_player
*/
const clubRound=document.getElementById("clubround");
const clubName=document.getElementById("clubname");
const clubLogo=document.getElementById("clublogo");
const clubFormation=document.getElementById("clubformation");
const clubRank=document.getElementById("clubrank");
const clubGoalplayerCNT=document.getElementsByClassName("clubgoalplayer_count");
const clubGoalplayerPLY=document.getElementsByClassName("clubgoalplayer_player");
const clubHelpplayerCNT=document.getElementsByClassName("clubhelpplayer_count");
const clubHelpplayerPLY=document.getElementsByClassName("clubhelpplayer_player");
(()=>{
	    $.ajax({
        url:"showClub",
        type: "get",
        data:"clubname=울산HDFC",
		dataType: 'json',
		success: (data) => {
			clubchart(data.club_win, data.club_draw, data.club_defeat);
			clubRound.innerText="("+data.club_round+"경기)";
            clubName.innerText=data.club_name;
            clubLogo.setAttribute('src','resources/assets/images/logos/울산HDFC.png');
            clubFormation.setAttribute('src','resources/assets/images/formation/울산HDFC.png');
            clubRank.innerText=data.club_ranking+"위";
                            var gname=['이동경','마틴아담','장시영'];
                var gcnt=[4,2,1]
                var hname=['이동경','루빅손','이규성'];
                var hcnt=[2,1,1]
                for(var i=0;i<3;i++){
                    clubGoalplayerCNT[i].innerText=gcnt[i];
                    clubGoalplayerPLY[i].innerText=gname[i];
                    clubHelpplayerCNT[i].innerText=hcnt[i];
                    clubHelpplayerPLY[i].innerText=hname[i];
                }
        },erro:()=>{
            alert("통신오류!");
        }
      })
})();
$(document).ready(function() {
    // 선호 구단 선택 시
    $('#teamselect').change(function() {
      var selectedTeam = $('#teamselect option:selected').text();
      /*console.log(selectedTeam);*/
      $.ajax({
        url:"showClub",
        type: "get",
        data:"clubname="+selectedTeam,
		dataType: 'json',
		success: (data) => {
			clubRound.innerText="("+data.club_round+"경기)";
            clubName.innerText=data.club_name;
            clubLogo.setAttribute('src','resources/assets/images/logos/'+selectedTeam+'.png');
            clubFormation.setAttribute('src','resources/assets/images/formation/'+selectedTeam+'.png');
            clubRank.innerText=data.club_ranking+"위";
            $("#record").empty();
			clubchart(data.club_win, data.club_draw, data.club_defeat);
            if(selectedTeam=="울산HDFC"){
                var gname=['이동경','마틴아담','장시영'];
                var gcnt=[4,2,1]
                var hname=['이동경','루빅손','이규성'];
                var hcnt=[2,1,1]
                for(var i=0;i<3;i++){
                    clubGoalplayerCNT[i].innerText=gcnt[i];
                    clubGoalplayerPLY[i].innerText=gname[i];
                    clubHelpplayerCNT[i].innerText=hcnt[i];
                    clubHelpplayerPLY[i].innerText=hname[i];
                }
            }else if(selectedTeam=="포항스틸러스"){
                var gname=['정재희','백성동','오베르단'];
                var gcnt=[2,1,1]
                var hname=['이호재','조르지','정재희'];
                var hcnt=[2,2,1]
                for(var i=0;i<3;i++){
                    clubGoalplayerCNT[i].innerText=gcnt[i];
                    clubGoalplayerPLY[i].innerText=gname[i];
                    clubHelpplayerCNT[i].innerText=hcnt[i];
                    clubHelpplayerPLY[i].innerText=hname[i];
                }
            }else{
                var gname=['가브리엘','문민서','오베르단'];
                var gcnt=[2,1,1]
                var hname=['이호재','조르지','정재희'];
                var hcnt=[2,2,1]
                for(var i=0;i<3;i++){
                    clubGoalplayerCNT[i].innerText=gcnt[i];
                    clubGoalplayerPLY[i].innerText=gname[i];
                    clubHelpplayerCNT[i].innerText=hcnt[i];
                    clubHelpplayerPLY[i].innerText=hname[i];
                }
            }
        },erro:()=>{
            alert("통신오류!");
        }
      })
      /*console.log(selectedTeam);*/
    });
});

function clubchart(win, draw,defeat){
	            var record = {
                color: "#adb5bd",
                series: [win, draw,defeat],
                labels: ["승", "무", "패"],
                chart: {
                  width: 180,
                  type: "donut",
                  fontFamily: "Plus Jakarta Sans', sans-serif",
                  foreColor: "#adb0bb",
                },
                plotOptions: {
                  pie: {
                    startAngle: 0,
                    endAngle: 360,
                    donut: {
                      size: '75%',
                    },
                  },
                },
                stroke: {
                  show: false,
                },
            
                dataLabels: {
                  enabled: false,
                },
            
                legend: {
                  show: false,
                },
                colors: ["#0067ac", "#c6c8ca", "#ee3224"],
            
                responsive: [
                  {
                    breakpoint: 991,
                    options: {
                      chart: {
                        width: 150,
                      },
                    },
                  },
                ],
                tooltip: {
                  theme: "dark",
                  fillSeriesColor: false,
                },
              };
            
              var chart = new ApexCharts(document.querySelector("#record"), record);
              chart.render();
}