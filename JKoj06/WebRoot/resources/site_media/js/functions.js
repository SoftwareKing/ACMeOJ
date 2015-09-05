var $window = $(window), gardenCtx, gardenCanvas, $garden, garden;
var clientWidth = $(window).width();
var clientHeight = $(window).height();
$(function () {
        $loveHeart = $("#loveHeart");
        var a = $loveHeart.width() / 2;
        var b = $loveHeart.height() / 2 - 55;
        $garden = $("#garden");
        gardenCanvas = $garden[0];
        gardenCanvas.width = $("#loveHeart").width();
        gardenCanvas.height = $("#loveHeart").height();
        gardenCtx = gardenCanvas.getContext("2d");
        gardenCtx.globalCompositeOperation = "lighter";
        garden = new Garden(gardenCtx, gardenCanvas);
        $("#content").css("width", $loveHeart.width() + $("#code").width());
        $("#content").css("height", Math.max($loveHeart.height(), $("#code").height()));
        $("#content").css("margin-top", Math.max(($window.height() - $("#content").height()) / 2, 10));
        $("#content").css("margin-left", Math.max(($window.width() - $("#content").width()) / 2, 10));
        setInterval(function () {
                garden.render()
            }, Garden.options.growSpeed)
    });
$(window).resize(function () {
        var b = $(window).width();
        var a = $(window).height();
        if (b != clientWidth && a != clientHeight) {
            location.replace(location)
        }
    });
function timeElapse(c) {
    var e = Date();
    var f = (Date.parse(e) - Date.parse(c)) / 1000;
    var g = Math.floor(f / (3600 * 24));
    f = f % (3600 * 24);
    var b = Math.floor(f / 3600);
    if (b < 10) {
        b = "0" + b
    }
    f = f % 3600;
    var d = Math.floor(f / 60);
    if (d < 10) {
        d = "0" + d
    }
    f = f % 60;
    if (f < 10) {
        f = "0" + f
    }
    var a = '<span class="digit">' + g + '</span> days <span class="digit">' + b + '</span> hours <span class="digit">' + d + '</span> minutes <span class="digit">' + f + "</span> seconds";
    $("#elapseClock").html(a)
}
(function (a) {
        a.fn.typewriter = function () {
            this.each(function () {
                    var d = a(this),
                    c = d.html(),
                    b = 0;
                    d.html("");
                    var e = setInterval(function () {
                                var f = c.substr(b, 1);
                                if (f == "<") {
                                    b = c.indexOf(">", b) + 1
                                } else {
                                    b++
                                }
                                d.html(c.substring(0, b) + (b & 1 ? "_" : ""));
                                if (b >= c.length) {
                                    clearInterval(e)
                                }
                            }, 75)
                });
            return this
        }
    })(jQuery);
function showMessages() {
    $("#messages").fadeIn(5000, function () {
            showLoveU()
        })
}
function adjustWordsPosition() {
    $("#words").css("position", "absolute");
    $("#words").css("top", $("#garden").position().top + 195);
    $("#words").css("left", $("#garden").position().left + 70)
}
function adjustCodePosition() {
    $("#code").css("margin-top", ($("#garden").height() - $("#code").height()) / 2)
}
function showLoveU() {
    $("#loveu").fadeIn(3000)
};
 