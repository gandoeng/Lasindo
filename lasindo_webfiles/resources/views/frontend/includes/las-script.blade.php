<script src="{{ url('maintheme/assets/libs/jquery-3.4.1.min.js') }}"></script>
<script src="{{ url('maintheme/assets/libs/popper.min.js') }}"></script>
<script src="{{ url('maintheme/assets/libs/bootstrap-4.5.0/js/bootstrap.min.js') }}"></script>
<script src="{{ url('maintheme/assets/libs/slick-1.8.1/slick/slick.min.js') }}"></script>
<script src="{{ url('maintheme/assets/libs/isotope/isotope.pkgd.js') }}"></script>
<script src="{{ url('maintheme/assets/libs/toastr/toastr.min.js') }}"></script>
<script src="{{ url('maintheme/assets/js/wow.min.js') }}"></script>
<script src="{{ url('maintheme/assets/js/main.js') }}"></script>

<script type="text/javascript">
	function truncateText(selector, maxLength) {
    var element = document.querySelector(selector),
        truncated = element.innerText;

    if (truncated.length > maxLength) {
        truncated = truncated.substr(0,maxLength) + '...';
    }
    return truncated;
}

	document.querySelector('p').innerText = truncateText('p', 200);

</script>
