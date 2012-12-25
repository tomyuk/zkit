# -*- shell-script -*-

depends date || die date is missing

#++ time_format [format [time]]
#
#   Formats a given *time* with the specified *format*.
#
#   format
#       Format string with ``%``-escaped sequences. Recognized sequences
#       are those of the ``strftime(3)`` function of the C library.
#   time
#       Time specification. If not given, the system's current time will
#       be used instead.
#
#--
function time_format () {
    [ $# -eq 2 ] && date --date="$2" "+$1" || date "+$1"
}

function time_unixtime_format () {
    [ $# -eq 2 ] && printf "%($1)T" $2 || printf "%($1)T" -1
}

#++ time_rfc2822 [time]
#
#   Formats a given *time* in the format specified by
#   `RFC 822 <http://www.ietf.org/rfcs/rfc822>`__ (or
#   `RFC 2822 <http://www.ietf.org/rfcs/rfc2822>`__). This is typically used
#   in Internet protocols and formats.
#
#   time
#       Time specification. If not given, the system's current time will
#       be used instead.
#--
function time_rfc2822 () {
    [ $# -eq 0 ] && date --rfc-2822 || date --date="$*" --rfc-2822
}

function time_rfc339 () {
    [ $# -eq 0 ] && date --rfc-2822 || date --date="$*" --rfc-339
}

function time_unixtime () {
    [ $# -eq 0 ] && date '+%s' || date --date="$*" '+%s'
}


#++ time_stamp [time] [nanosec]
#
#   Formats a give *time* as a timestamp. The output looks like::
#
#      YYYY-mm-ddTHH:MM:SS.NNNNNNNN
#
#   Timestamps generated this way can be sorted lexicographically, e.g.
#   using the ``sort(1)`` command, it looks like.
#
#   time
#       Time specification. If not given, the system's current time will
#       be used instead.
#--

function time_iso8601 () {
    local format
    if [ "$2" ]; then
	format='+%FT%T.%N'
    else
	format='+%FT%T'
    fi
    if [ "$1" ] ; then
        date --date="$1" "$format"
    else
        date "$format"
    fi
}

function time_iso8601_utc () {
    local format
    if [ "$2" ]; then
	format='+%FT%T.%NZ'
    else
	format='+%FT%TZ'
    fi
    if [ "$1" ] ; then
        date --utc  --date="$1" "$format"
    else
        date --utc "$format"
    fi
}

function time_iso8601_tz () {
    local format
    if [ "$2" ]; then
	format='+%FT%T.%N%z'
    else
	format='+%FT%T%z'
    fi
    if [ "$1" ] ; then
        date --date="$1" "$format"
    else
        date "$format"
    fi
}

#++ time_parse string
#
#   Parses a string containing a time specification and returns the number
#   of seconds from the Epoch.
#
#   string
#       Time specification string. Can contain almost any english free-form
#       text which can be parsed as a date. If the input value cannot be
#       parsed in an unambiguous manner, exit status of the function is
#       non-zero.
#--
function time_parse () {
    date --date="$1" '+%s'
}
