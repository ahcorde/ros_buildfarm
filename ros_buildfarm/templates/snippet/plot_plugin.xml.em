    <hudson.plugins.plot.PlotPublisher plugin="plot@@2.1.3">
      <plots>
@[for plot_group, plot_list in plots.items()]@
@[for plot in plot_list]@
        <hudson.plugins.plot.Plot>
          <title>@(plot.title)</title>
          <yaxis>@(plot.y_axis_label)</yaxis>
          <series>
@[for series in plot.data_series]@
            <hudson.plugins.plot.CSVSeries>
              <file>@(series.data_file)</file>
              <label />
              <fileType>@(series.data_type)</fileType>
              <colExclusionSet>
                <int>@(series.selection_value)</int>
              </colExclusionSet>
              <inclusionFlag>@(series.selection_flag)</inclusionFlag>
              <exclusionValues>@(series.selection_value)</exclusionValues>
              <exclusionValuesList class="java.util.Arrays$ArrayList">
                <a class="string-array">
                  <string>@(series.selection_value)</string>
                </a>
              </exclusionValuesList>
              <url>@(series.url)</url>
              <displayTableFlag>false</displayTableFlag>
            </hudson.plugins.plot.CSVSeries>
@[end for]@
          </series>
          <group>@(plot_group)</group>
          <numBuilds />
          <csvLastModification>0</csvLastModification>
          <style>@(plot.style)</style>
          <useDescr>false</useDescr>
          <keepRecords>false</keepRecords>
          <exclZero>@('true' if plot.y_axis_exclude_zero else 'false')</exclZero>
          <logarithmic>false</logarithmic>
          <yaxisMinimum />
          <yaxisMaximum />
        </hudson.plugins.plot.Plot>
@[end for]@
@[end for]@
      </plots>
    </hudson.plugins.plot.PlotPublisher>
