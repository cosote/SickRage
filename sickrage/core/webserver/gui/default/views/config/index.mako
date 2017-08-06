<%inherit file="../layouts/main.mako"/>
<%!
    import sys, os, tornado

    import sickrage
    from sickrage.core.helpers import anon_url

    sr_user = None
    try:
        import pwd
        sr_user = pwd.getpwuid(os.getuid()).pw_name
    except ImportError:
        import getpass
        sr_user = getpass.getuser()
%>

<%block name="content">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"><i
                                class="icons-sickrage icons-sickrage-version"></i>
                            SR Version:
                        </div>
                        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">${sickrage.srCore.VERSIONUPDATER.updater.version}</div>
                    </div>
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"><i
                                class="icons-sickrage icons-sickrage-type"></i>
                            SR Type:
                        </div>
                        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">${sickrage.srCore.VERSIONUPDATER.updater.type}</div>
                    </div>
                    % if sr_user:
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"><i
                                    class="icons-sickrage icons-sickrage-user"></i>
                                SR User:
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">${sr_user}</div>
                        </div>
                    % endif
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"><i
                                class="icons-sickrage icons-sickrage-locale"></i>
                            SR Locale:
                        </div>
                        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">${sickrage.SYS_ENCODING}</div>
                    </div>
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"><i
                                class="icons-sickrage icons-sickrage-cfg"></i>
                            SR Config:
                        </div>
                        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">${sickrage.CONFIG_FILE}</div>
                    </div>
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"><i
                                class="icons-sickrage icons-sickrage-cache"></i>
                            SR Cache Dir:
                        </div>
                        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">${sickrage.CACHE_DIR}</div>
                    </div>
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"><i
                                class="icons-sickrage icons-sickrage-log"></i>
                            SR Log Dir:
                        </div>
                        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">${sickrage.srCore.srConfig.LOG_DIR}</div>
                    </div>
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"><i
                                class="icons-sickrage icons-sickrage-console"></i>
                            SR Arguments:
                        </div>
                        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">${sys.argv[1:]}</div>
                    </div>
                    % if sickrage.srCore.srConfig.WEB_ROOT:
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">SR Web Root:</div>
                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">${sickrage.srCore.srConfig.WEB_ROOT}</div>
                        </div>
                    % endif
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"><i
                                class="icons-sickrage icons-sickrage-tornado"></i>
                            Tornado Version:
                        </div>
                        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">${tornado.version}</div>
                    </div>
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"><i
                                class="icons-sickrage icons-sickrage-python"></i>
                            Python Version:
                        </div>
                        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">${sys.version}</div>
                    </div>

                    <hr/>

                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"><i
                                class="icons-sickrage icons-sickrage-logo"></i>
                            Homepage
                        </div>
                        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                            <a href="${anon_url('https://www.sickrage.ca/')}"
                               rel="noreferrer"
                               onclick="window.open(this.href, '_blank'); return false;">https://www.sickrage.ca/</a>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"><i
                                class="icons-sickrage icons-sickrage-wiki"></i>
                            WiKi
                        </div>
                        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                            <a href="${anon_url('https://git.sickrage.ca/SiCKRAGE/sickrage/wikis/home')}"
                               rel="noreferrer" onclick="window.open(this.href, '_blank'); return false;">https://git.sickrage.ca/SiCKRAGE/sickrage/wikis/home</a>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"><i
                                class="icons-sickrage icons-sickrage-forums"></i>
                            Forums
                        </div>
                        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                            <a href="${anon_url('https://sickrage.ca/forums/')}"
                               rel="noreferrer"
                               onclick="window.open(this.href, '_blank'); return false;">https://www.sickrage.ca/forums/</a>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"><i
                                class="icons-sickrage icons-sickrage-git"></i>
                            Source
                        </div>
                        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                            <a href="${anon_url('https://git.sickrage.ca/SiCKRAGE/sickrage/')}"
                               rel="noreferrer"
                               onclick="window.open(this.href, '_blank'); return false;">https://git.sickrage.ca/SiCKRAGE/sickrage/</a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"><i
                                class="icons-sickrage icons-sickrage-irc"></i>
                            IRChat
                        </div>
                        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                            <a href="irc://irc.freenode.net/#sickrage" rel="noreferrer"><i>#sickrage</i>
                                on <i>irc.freenode.net</i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</%block>
