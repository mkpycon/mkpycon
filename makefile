# ****************************************************************************
# *                                  License                                 *
# ****************************************************************************

# MIT License

# Copyright (c) 2020 MkPyCon Project Contributors

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

# ****************************************************************************
# *                                 Settings                                 *
# ****************************************************************************

.EXPORT_ALL_VARIABLES:

.PHONY:*

.SILENT:

# ****************************************************************************
# *                                 Variables                                *
# ****************************************************************************

TIME_START=$(shell date +%s%3N)

# ****************************************************************************
# *                                 Functions                                *
# ****************************************************************************

define CALCULATE_EXECUTION_TIME
	awk -v CONVFMT='%.3f' ' \
	BEGIN { \
	"date +%s%3N"|getline TIME_END; \
	delta=(TIME_END-${TIME_START})/1000; \
	print "Execution time : "delta" (seconds)"}'
endef
