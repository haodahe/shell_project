#! /bin/sh

echo -n "Pls input the year: "
read year

jan=1
feb=`expr $jan + 31`
feb=`expr $feb % 7`

if [ `expr $year % 4` -eq 0 ] && [ `expr $year % 100` -ne 0 ] || [ `expr $year % 400` -eq 0 ]
then
	mar=`expr $feb + 29`
	mar=`expr $mar % 7`
	febDay=30
else
	mar=`expr $feb + 28`
        mar=`expr $mar % 7`
	febDay=29
fi

apr=`expr $mar + 31`
apr=`expr $apr % 7`

may=`expr $apr + 30`
may=`expr $may % 7`

jun=`expr $may + 31`
jun=`expr $jun % 7`

jul=`expr $jun + 30`
jul=`expr $jul % 7`

aug=`expr $jul + 31`
aug=`expr $aug % 7`

sep=`expr $aug + 31`
sep=`expr $sep % 7`

oct=`expr $sep + 30`
oct=`expr $oct % 7`

nov=`expr $oct + 31`
nov=`expr $nov % 7`

dec=`expr $nov + 30`
dec=`expr $dec % 7`

if [ $feb -eq 0 ]
then
	feb=7
fi

if [ $mar -eq 0 ]
then
        mar=7
fi

if [ $apr -eq 0 ]
then
        apr=7
fi

if [ $may -eq 0 ]
then
        may=7
fi

if [ $jun -eq 0 ]
then
        jun=7
fi

if [ $jul -eq 0 ]
then
        jul=7
fi

if [ $aug -eq 0 ]
then
        aug=7
fi

if [ $sep -eq 0 ]
then
        sep=7
fi

if [ $oct -eq 0 ]
then
        oct=7
fi

if [ $nov -eq 0 ]
then
        nov=7
fi

if [ $dec -eq 0 ]
then
        dec=7
fi

left=1
mid=1
right=1

echo "             1                                2                                3"
echo "Mo  Tu  We  Th  Fr  Sa  Su       Mo  Tu  We  Th  Fr  Sa  Su       Mo  Tu  We  Th  Fr  Sa  Su"

for i in 1 2 3 4 5 6; do
	for j in 1 2 3 4 5 6 7; do
		if [ $jan -eq $j ]
		then
			if [ $left -eq 32 ]
			then
				echo -n "    "
				continue
			fi

			if [ $left -ge 10 ]
			then
				echo -n $left " "
			else
				echo -n " "$left " "
			fi

			jan=`expr $jan + 1`

			if [ $jan -eq 8 ]
			then
				jan=1
			fi

			left=`expr $left + 1`
		else
			echo -n "    "
		fi	
	done

	echo -n "     "

	for j in 1 2 3 4 5 6 7; do
                if [ $feb -eq $j ]
                then
                        if [ $mid -eq $febDay ]
                        then
                                echo -n "    "
                                continue
                        fi

                        if [ $mid -ge 10 ]
                        then
                                echo -n $mid " "
                        else
                                echo -n " "$mid " "
                        fi

                        feb=`expr $feb + 1`

                        if [ $feb -eq 8 ]
                        then
                                feb=1
                        fi

                        mid=`expr $mid + 1`
                else
                        echo -n "    "
                fi
        done

	echo -n "     "

	for j in 1 2 3 4 5 6 7; do
                if [ $mar -eq $j ]
                then
                        if [ $right -eq 32 ]
                        then
                                echo -n "    "
                                continue
                        fi

                        if [ $right -ge 10 ]
                        then
                                echo -n $right " "
                        else
                                echo -n " "$right " "
                        fi

                        mar=`expr $mar + 1`

                        if [ $mar -eq 8 ]
                        then
                                mar=1
                        fi

                        right=`expr $right + 1`
                else
                        echo -n "    "
                fi
        done
	echo
done

echo "             4                                5                                6"
echo "Mo  Tu  We  Th  Fr  Sa  Su       Mo  Tu  We  Th  Fr  Sa  Su       Mo  Tu  We  Th  Fr  Sa  Su"

left=1
mid=1
right=1

for i in 1 2 3 4 5 6; do
        for j in 1 2 3 4 5 6 7; do
                if [ $apr -eq $j ]
                then
                        if [ $left -eq 31 ]
                        then
                                echo -n "    "
                                continue
                        fi

                        if [ $left -ge 10 ]
                        then
                                echo -n $left " "
                        else
                                echo -n " "$left " "
                        fi

                        apr=`expr $apr + 1`

                        if [ $apr -eq 8 ]
                        then
                                apr=1
                        fi

                        left=`expr $left + 1`
                else
                        echo -n "    "
                fi
        done

        echo -n "     "

        for j in 1 2 3 4 5 6 7; do
                if [ $may -eq $j ]
                then
                        if [ $mid -eq 32 ]
                        then
                                echo -n "    "
                                continue
                        fi

                        if [ $mid -ge 10 ]
                        then
                                echo -n $mid " "
                        else
                                echo -n " "$mid " "
                        fi

                        may=`expr $may + 1`

                        if [ $may -eq 8 ]
                        then
                                may=1
                        fi

                        mid=`expr $mid + 1`
                else
                        echo -n "    "
                fi
        done

        echo -n "     "

        for j in 1 2 3 4 5 6 7; do
                if [ $jun -eq $j ]
                then
                        if [ $right -eq 31 ]
                        then
                                echo -n "    "
                                continue
                        fi

                        if [ $right -ge 10 ]
                        then
                                echo -n $right " "
                        else
                                echo -n " "$right " "
                        fi

                        jun=`expr $jun + 1`

                        if [ $jun -eq 8 ]
                        then
                                jun=1
                        fi

                        right=`expr $right + 1`
                else
                        echo -n "    "
                fi
        done
        echo
done

echo "             7                                8                                9"
echo "Mo  Tu  We  Th  Fr  Sa  Su       Mo  Tu  We  Th  Fr  Sa  Su       Mo  Tu  We  Th  Fr  Sa  Su"

left=1
mid=1
right=1

for i in 1 2 3 4 5 6; do
        for j in 1 2 3 4 5 6 7; do
                if [ $jul -eq $j ]
                then
                        if [ $left -eq 32 ]
                        then
                                echo -n "    "
                                continue
                        fi

                        if [ $left -ge 10 ]
                        then
                                echo -n $left " "
                        else
                                echo -n " "$left " "
                        fi

                        jul=`expr $jul + 1`

                        if [ $jul -eq 8 ]
                        then
                                jul=1
                        fi

                        left=`expr $left + 1`
                else
                        echo -n "    "
                fi
        done

        echo -n "     "

        for j in 1 2 3 4 5 6 7; do
                if [ $aug -eq $j ]
                then
                        if [ $mid -eq 32 ]
                        then
                                echo -n "    "
                                continue
                        fi

                        if [ $mid -ge 10 ]
                        then
                                echo -n $mid " "
                        else
                                echo -n " "$mid " "
                        fi

                        aug=`expr $aug + 1`

                        if [ $aug -eq 8 ]
                        then
                                aug=1
                        fi

                        mid=`expr $mid + 1`
                else
                        echo -n "    "
                fi
        done

        echo -n "     "

        for j in 1 2 3 4 5 6 7; do
                if [ $sep -eq $j ]
                then
                        if [ $right -eq 31 ]
                        then
                                echo -n "    "
                                continue
                        fi

                        if [ $right -ge 10 ]
                        then
                                echo -n $right " "
                        else
                                echo -n " "$right " "
                        fi

                        sep=`expr $sep + 1`

                        if [ $sep -eq 8 ]
                        then
                                sep=1
                        fi

                        right=`expr $right + 1`
                else
                        echo -n "    "
                fi
        done
        echo
done

echo "            10                               11                               12"
echo "Mo  Tu  We  Th  Fr  Sa  Su       Mo  Tu  We  Th  Fr  Sa  Su       Mo  Tu  We  Th  Fr  Sa  Su"

left=1
mid=1
right=1

for i in 1 2 3 4 5 6; do
        for j in 1 2 3 4 5 6 7; do
                if [ $oct -eq $j ]
                then
                        if [ $left -eq 32 ]
                        then
                                echo -n "    "
                                continue
                        fi

                        if [ $left -ge 10 ]
                        then
                                echo -n $left " "
                        else
                                echo -n " "$left " "
                        fi

                        oct=`expr $oct + 1`

                        if [ $oct -eq 8 ]
                        then
                                oct=1
                        fi

                        left=`expr $left + 1`
                else
                        echo -n "    "
                fi
        done

        echo -n "     "

        for j in 1 2 3 4 5 6 7; do
                if [ $nov -eq $j ]
                then
                        if [ $mid -eq 31 ]
                        then
                                echo -n "    "
                                continue
                        fi

                        if [ $mid -ge 10 ]
                        then
                                echo -n $mid " "
                        else
                                echo -n " "$mid " "
                        fi

                        nov=`expr $nov + 1`

                        if [ $nov -eq 8 ]
                        then
                                nov=1
                        fi

                        mid=`expr $mid + 1`
                else
                        echo -n "    "
                fi
        done

        echo -n "     "

        for j in 1 2 3 4 5 6 7; do
                if [ $dec -eq $j ]
                then
                        if [ $right -eq 32 ]
                        then
                                echo -n "    "
                                continue
                        fi

                        if [ $right -ge 10 ]
                        then
                                echo -n $right " "
                        else
                                echo -n " "$right " "
                        fi

                        dec=`expr $dec + 1`

                        if [ $dec -eq 8 ]
                        then
                                dec=1
                        fi

                        right=`expr $right + 1`
                else
                        echo -n "    "
                fi
        done
        echo
done








#echo $jan $feb $mar $apr $may $jun $jul $aug $sep $oct $nov $dec


