<!-- ************************* Make Channels **************** -->
    <target name="make_channels" description="make channels">
        <echo>--make_channel--</echo>
        <foreach target="make_one_channel" list="${market_channels}" delimiter="," param="channel">
        </foreach>
    </target>

    <!-- ************************* Make One Channel **************** -->
    <target name="make_one_channel" depends="savemanifest,modify_update_file,release,copyto_antapkdir,replacemanifest,clean" description="make one channel">
        <echo>--make one channel--</echo>        
    </target>


    <!-- ************************Save Manifest******************* -->
    <target name="savemanifest">
        <echo>--savemanifest--</echo>
        <copy file="${basedir}/AndroidManifest.xml" tofile="${basedir}/AndroidManifest_bak.xml" />
    </target>

    <!-- ************************Copyto_antapkdir******************* -->
    <target name="copyto_antapkdir">
        <echo>--copyto_antapkdir--</echo>
        <copy file="${out.final.file}" tofile="${out.final.file.withchannel}" />
    </target>

    <!-- ************************Replace Manifest******************* -->
    <target name="replacemanifest">
        <echo>--replacemanifest--</echo>
        <copy file="${basedir}/AndroidManifest_bak.xml" tofile="${basedir}/AndroidManifest.xml" overwrite="true" />
    </target>

    <!-- ************************modify update manifest******************* -->
    <target name="modify_update_file">
        <echo>--modify_update_file--</echo>
        <replaceregexp file="${basedir}/AndroidManifest.xml" match="channel_someid" replace="${channel}" byline="false" encoding="utf-8" />

        <property name="out.final.file.withchannel" value="${basedir}/${apk_location_name}/${ant.project.name}_${app_version}_${channel}.apk" />

    </target>



    <taskdef name="foreach" classname="net.sf.antcontrib.logic.ForEach" classpath="${sdk.dir}/tools/lib/ant-contrib-1.0b3.jar" />