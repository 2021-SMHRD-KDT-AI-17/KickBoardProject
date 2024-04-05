/*
clubround
clubname
clublogo
clubformation
clubrank
scheduleDate
scheduleMy
scheduleEnemy
clubgoalplayer_count
clubgoalplayer_player
clubhelpplayer_count
clubhelpplayer_player
*/
const clubRound = document.getElementById("clubround");
const clubName = document.getElementById("clubname");
const clubLogo = document.getElementById("clublogo");
const clubFormation = document.getElementById("clubformation");
const clubRank = document.getElementById("clubrank");
const scheduleDate = document.getElementsByClassName("scheduledate");
const scheduleMy = document.getElementsByClassName("schedulemy");
const scheduleEnemy = document.getElementsByClassName("scheduleenemy");
const clubGoalplayerCNT = document.getElementsByClassName("clubgoalplayer_count");
const clubGoalplayerPLY = document.getElementsByClassName("clubgoalplayer_player");
const clubHelpplayerCNT = document.getElementsByClassName("clubhelpplayer_count");
const clubHelpplayerPLY = document.getElementsByClassName("clubhelpplayer_player");
(() => {
	$.ajax({
		url: "showClub",
		type: "get",
		data: "clubname=울산HDFC",
		dataType: 'json',
		success: (data) => {
			clubchart(data.club_win, data.club_draw, data.club_defeat);
			clubRound.innerText = "(" + data.club_round + "경기)";
			clubName.innerText = data.club_name;
			clubLogo.setAttribute('src', 'resources/assets/images/logos/울산HDFC.png');
			clubFormation.setAttribute('src', 'resources/assets/images/formation/울산HDFC.png');
			clubRank.innerText = data.club_ranking + "위";
			var gname = ['이동경', '마틴아담', '장시영'];
			var gcnt = [4, 2, 1]
			var hname = ['이동경', '루빅손', '이규성'];
			var hcnt = [2, 1, 1]
			for (var i = 0; i < 3; i++) {
				clubGoalplayerCNT[i].innerText = gcnt[i];
				clubGoalplayerPLY[i].innerText = gname[i];
				clubHelpplayerCNT[i].innerText = hcnt[i];
				clubHelpplayerPLY[i].innerText = hname[i];
			}
		}, erro: () => {
			alert("통신오류!");
		}
	})
})();
$(document).ready(function() {
	// 선호 구단 선택 시
	$('#teamselect').change(function() {
		var selectedTeam = $('#teamselect option:selected').text();
		$.ajax({
			url: "showClub",
			type: "get",
			data: "clubname=" + selectedTeam,
			dataType: 'json',
			success: (data) => {
				clubRound.innerText = "(" + data.club_round + "경기)";
				clubName.innerText = data.club_name;
				clubLogo.setAttribute('src', 'resources/assets/images/logos/' + selectedTeam + '.png');
				clubFormation.setAttribute('src', 'resources/assets/images/formation/' + selectedTeam + '.png');
				clubRank.innerText = data.club_ranking + "위";
				$("#record").empty();
				clubchart(data.club_win, data.club_draw, data.club_defeat);
				club7yearsRank(selectedTeam);
				let datelist = [];
				let enemylist = [];
				let gname = [];
				let gcnt = []
				let hname = [];
				let hcnt = []
				if (selectedTeam == "울산HDFC") {
					gname = ['이동경', '마틴아담', '장시영'];
					gcnt = [4, 2, 1]
					hname = ['이동경', '루빅손', '이규성'];
					hcnt = [2, 1, 1]

					datelist = ['2024.04.06', '2024.04.13', '2024.04.28', '2024.05.01', '2024.05.04'];
					enemylist = ['수원FC', '강원FC', '제주유나이티드', '울산FC', '서울FC'];
					for (var k = 0; k < 5; k++) {
						scheduleDate[k].innerText = datelist[k];
						scheduleMy[k].innerText = selectedTeam;
						scheduleEnemy[k].innerText = enemylist[k];
					}
				} else if (selectedTeam == "포항스틸러스") {
					gname = ['정재희', '백성동', '오베르단'];
					gcnt = [2, 1, 1]
					hname = ['이호재', '조르지', '정재희'];
					hcnt = [2, 2, 1]

					datelist = ['2024.04.07', '2024.04.13', '2024.04.20', '2024.04.28', '2024.05.01'];
					enemylist = ['대전하나시티즌', '서울FC', '김천상무FC', '인천유나이티드', '강원FC'];
					for (var k = 0; k < 5; k++) {
						scheduleDate[k].innerText = datelist[k];
						scheduleMy[k].innerText = selectedTeam;
						scheduleEnemy[k].innerText = enemylist[k];
					}
				} else if (selectedTeam == "광주FC") {
					gname = ['가브리엘', '이희균', '이건희'];
					gcnt = [4, 2, 1]
					hname = ['두현석', '이건희', '엄지성'];
					hcnt = [1, 1, 1]
					datelist = ['2024.04.06', '2024.04.13', '2024.04.27', '2024.05.01', '2024.05.06'];
					enemylist = ['김천상무FC', '전북유나이티드', '수원FC', '제주유나이티드', '대전하나시티즌'];
					for (var k = 0; k < 5; k++) {
						scheduleDate[k].innerText = datelist[k];
						scheduleMy[k].innerText = selectedTeam;
						scheduleEnemy[k].innerText = enemylist[k];
					}
				} else if (selectedTeam == "전북현대모터스") {
					gname = ['안현범', '이동준', '문성민'];
					gcnt = [1, 1, 1]
					hname = ['한교원', '김진수', '송민규'];
					hcnt = [2, 2, 1]
				} else if (selectedTeam == "인천유나이티드") {
					gname = ['무고사', '제르소', '박승호'];
					gcnt = [1, 2, 2]
					hname = ['제르소', '박승호', '홍시후'];
					hcnt = [1, 2, 2]
				} else if (selectedTeam == "대구FC") {
					gname = ['요시노', '홍철', '에드가'];
					gcnt = [2, 1, 1]
					hname = ['세징야', 'x', 'x'];
					hcnt = [1, 'x', 'x']
				} else if (selectedTeam == "FC서울") {
					gname = ['일류첸코', '기성용', '임상협'];
					gcnt = [3, 1, 1]
					hname = ['일류첸코', '팔로세비치', '기성용'];
					hcnt = [2, 1, 1]
				} else if (selectedTeam == "대전하나시티즌") {
					gname = ['레안드로', '김인균', '구텍'];
					gcnt = [1, 1, 1]
					hname = ['이현식', '김준범', '레안드로'];
					hcnt = [1, 1, 1]
				} else if (selectedTeam == "제주유나이티드") {
					gname = ['진성욱', '유리 조나탄', '이탈로'];
					gcnt = [2, 2, 1]
					hname = ['김동준', '헤이스', 'x'];
					hcnt = [1, 1, 'x']
				} else if (selectedTeam == "강원FC") {
					gname = ['이상헌', '윤석영', '양민혁'];
					gcnt = [5, 2, 1]
					hname = ['유인수', '양민혁', 'x'];
					hcnt = [1, 1, 'x']
				} else if (selectedTeam == "수원FC") {
					gname = ['이승우', '정재민', '지동원'];
					gcnt = [2, 1, 1]
					hname = ['정승원', '안데르손', 'x'];
					hcnt = [1, 1, 'x']
				} else {
					gname = ['김현욱', '이중민', '유강현'];
					gcnt = [4, 2, 1]
					hname = ['김진규', '정치인', '강현묵'];
					hcnt = [2, 1, 1]
				}
				for (var i = 0; i < 3; i++) {
					clubGoalplayerCNT[i].innerText = gcnt[i];
					clubGoalplayerPLY[i].innerText = gname[i];
					clubHelpplayerCNT[i].innerText = hcnt[i];
					clubHelpplayerPLY[i].innerText = hname[i];
				}
			}, erro: () => {
				alert("통신오류!");
			}
		})
		/*console.log(selectedTeam);*/
	});
});

function clubchart(win, draw, defeat) {
	var record = {
		color: "#adb5bd",
		series: [win, draw, defeat],
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
function club7yearsRank(selectedTeam) {
	let data = [];
	let years = [];
	if (selectedTeam == "울산HDFC") {
		data = [3, 2, 2, 2, 1, 1, 3]
		years = ['2018', '2019', '2020', '2021', '2022', '2023', '2024']
	} else if (selectedTeam == "포항스틸러스") {
		data = [4, 4, 3, 9, 3, 2, 1]
		years = ['2018', '2019', '2020', '2021', '2022', '2023', '2024']
	} else if (selectedTeam == "광주FC") {
		data = [10, 7, 12, 11, 12, 3, 7]
		years = ['2015', '2016', '2017', '2020', '2021', '2023', '2024']
	} else if (selectedTeam == "전북현대모터스") {
		data = [1, 1, 1, 1, 2, 4, 12]
		years = ['2018', '2019', '2020', '2021', '2022', '2023', '2024']
	} else if (selectedTeam == "인천유나이티드") {
		data = [9, 10, 10, 7, 4, 5, 5]
		years = ['2018', '2019', '2020', '2021', '2022', '2023', '2024']
	} else if (selectedTeam == "대구FC") {
		data = [7, 6, 5, 3, 8, 7, 11]
		years = ['2018', '2019', '2020', '2021', '2022', '2023', '2024']
	} else if (selectedTeam == "FC서울") {
		data = [11, 3, 8, 6, 9, 6, 4]
		years = ['2018', '2019', '2020', '2021', '2022', '2023', '2024']
	} else if (selectedTeam == "대전하나시티즌") {
		data = [13, 15, 13, 13, 12, 8, 10]
		years = ['2010', '2011', '2012', '2013', '2015', '2023', '2024']
	} else if (selectedTeam == "제주유나이티드") {
		data = [2, 5, 12, 4, 5, 9, 6]
		years = ['2017', '2018', '2019', '2020', '2021', '2023', '2024']
	} else if (selectedTeam == "강원FC") {
		data = [8, 7, 6, 11, 6, 10, 8]
		years = ['2018', '2019', '2020', '2021', '2022', '2023', '2024']
	} else if (selectedTeam == "수원FC") {
		data = [12, 5, 7, 11, 9]
		years = ['2016', '2021', '2022', '2023', '2024']
	} else {
		data = [11, 2]
		years = ['2022', '2024']
	}
	var options = {
		series: [{
			name: '순위',
			data: data
		}],
		chart: {
			type: 'line',
			height: 250
		},
		stroke: {
			curve: 'straight',
		},
		dataLabels: {
			enabled: true
		},
		title: {
			text: '최근 7년 구단 순위',
			align: 'left'
		},
		markers: {
			hover: {
				sizeOffset: 4
			}
		},
		xaxis: {
			categories: years,
		},

		yaxis: {
			min: 1,
			max: 12,
			reversed: true,
			labels: {
				formatter: function(value) {
					return Math.round(value);
				}
			},
			show: false // y축 라벨 숨기기
		},
		grid: {
			show: false // 눈금선 숨기기
		},
		markers: {
			show: true, // 마커 보이기
			size: 5 // 마커 크기 설정
		},
		toolbar: {
			show: false // 툴바 숨기기
		}
	};
	$("#rank-5").empty();
	var chart = new ApexCharts(document.querySelector("#rank-5"), options);
	chart.render();
}