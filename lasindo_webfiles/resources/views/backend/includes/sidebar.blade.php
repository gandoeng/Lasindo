<div class="c-sidebar c-sidebar-dark c-sidebar-fixed c-sidebar-lg-show" id="sidebar">
    <div class="c-sidebar-brand d-lg-down-none">
        <img class="c-sidebar-brand-full" src="{{ asset('img/brand/lasindo-logo.png') }}" width="89" height="25" alt="Lasindo Logo">
        <img class="c-sidebar-brand-minimized" src="{{ asset('img/brand/lasindo-icon.png') }}" width="30" height="30" alt="Lasindo Logo">
    </div><!--c-sidebar-brand-->

    <ul class="c-sidebar-nav">
        <li class="c-sidebar-nav-item">
            <x-utils.link class="c-sidebar-nav-link" :href="route('admin.dashboard')" :active="activeClass(Route::is('admin.dashboard'), 'c-active')" icon="c-sidebar-nav-icon fas fa-tachometer-alt" :text="__('Dashboard')" />
        </li>
        
        <li class="c-sidebar-nav-title">Homepage</li>
        <li class="c-sidebar-nav-item">
            <x-utils.link class="c-sidebar-nav-link" :href="route('admin.slidebanners')" :active="activeClass(Route::is('admin.slidebanners.*'), 'c-active')" icon="c-sidebar-nav-icon fas fa-images" :text="__('Slide Banners')" />
        </li>
        <li class="c-sidebar-nav-item">
            <x-utils.link class="c-sidebar-nav-link" :href="route('admin.setting')" :active="activeClass(Route::is('admin.setting.*'), 'c-active')" icon="c-sidebar-nav-icon fas fa-cog" :text="__('Setting')" />
        </li>
        <li class="c-sidebar-nav-item">
            <x-utils.link class="c-sidebar-nav-link" :href="route('admin.showcase.index')" :active="activeClass(Route::is('admin.showcase.*'), 'c-active')" icon="c-sidebar-nav-icon fas fa-th-large" :text="__('Showcase Product')" />
        </li>

        <li class="c-sidebar-nav-title">About</li>
        <li class="c-sidebar-nav-item">
            <x-utils.link class="c-sidebar-nav-link" :href="route('admin.about.index')" :active="activeClass(Route::is('admin.about.*'), 'c-active')" icon="c-sidebar-nav-icon fas fa-info-circle" :text="__('About')" />
        </li>

        <li class="c-sidebar-nav-title">Products & Brands</li>
        <li class="c-sidebar-nav-item">
            <x-utils.link :href="route('admin.probrands.brand.index')" icon="c-sidebar-nav-icon fas fa-certificate" class="c-sidebar-nav-link" :text="__('Brands')" :active="activeClass(Route::is('admin.probrands.brand.*'), 'c-active')" />
        </li>
        <li class="c-sidebar-nav-item">
            <x-utils.link :href="route('admin.probrands.product.index')" icon="c-sidebar-nav-icon fas fa-box" class="c-sidebar-nav-link" :text="__('Products')" :active="activeClass(Route::is('admin.probrands.product.*'), 'c-active')" />
        </li>
        <li class="c-sidebar-nav-item">
            <x-utils.link :href="route('admin.probrands.ens.index')" icon="c-sidebar-nav-icon fas fa-wrench" class="c-sidebar-nav-link" :text="__('Engineering & Solution')" :active="activeClass(Route::is('admin.probrands.ens.*'), 'c-active')" />
        </li>
        <li class="c-sidebar-nav-item">
            <x-utils.link :href="route('admin.probrands.epc.index')" icon="c-sidebar-nav-icon fas fa-hand-holding-water" class="c-sidebar-nav-link" :text="__('EPC')" :active="activeClass(Route::is('admin.probrands.epc.*'), 'c-active')" />
        </li>
        
        <li class="c-sidebar-nav-title">Contact Us</li>
        <li class="c-sidebar-nav-item">
            <x-utils.link :href="route('admin.contact.index')" icon="c-sidebar-nav-icon fas fa-envelope" class="c-sidebar-nav-link" :text="__('Messages')" :active="activeClass(Route::is('admin.contact.*'), 'c-active')" />
        </li>
        
        <li class="c-sidebar-nav-title">Address & Social Medias</li>
        <li class="c-sidebar-nav-item">
            <x-utils.link :href="route('admin.addsoc.index')" icon="c-sidebar-nav-icon fas fa-map-marker-alt" class="c-sidebar-nav-link" :text="__('Address & Social Medias')" :active="activeClass(Route::is('admin.addsoc.*'), 'c-active')" />
        </li>
        @if (
            $logged_in_user->hasAllAccess() ||
            (
                $logged_in_user->can('admin.access.user.list') ||
                $logged_in_user->can('admin.access.user.deactivate') ||
                $logged_in_user->can('admin.access.user.reactivate') ||
                $logged_in_user->can('admin.access.user.clear-session') ||
                $logged_in_user->can('admin.access.user.impersonate') ||
                $logged_in_user->can('admin.access.user.change-password')
            )
        )
            <li class="c-sidebar-nav-title">@lang('Advanced')</li>
            <li class="c-sidebar-nav-item">
                <x-utils.link class="c-sidebar-nav-link" :href="route('admin.catsec')" :active="activeClass(Route::is('admin.catsec'), 'c-active')" icon="c-sidebar-nav-icon fas fa-cubes" :text="__('Category & Section')" />
            </li>
            <li class="c-sidebar-nav-item">
                <x-utils.link class="c-sidebar-nav-link" :href="route('admin.brandsec')" :active="activeClass(Route::is('admin.brandsec'), 'c-active')" icon="c-sidebar-nav-icon fas fa-feather-alt" :text="__('Brands on Section')" />
            </li>
            <li class="c-sidebar-nav-item">
                <x-utils.link class="c-sidebar-nav-link" :href="route('admin.fm')" :active="activeClass(Route::is('admin.fm'), 'c-active')" icon="c-sidebar-nav-icon fas fa-folder" :text="__('File Manager')" />
            </li>
            <li class="c-sidebar-nav-dropdown {{ activeClass(Route::is('admin.auth.user.*') || Route::is('admin.auth.role.*'), 'c-open c-show') }}">
                <x-utils.link
                    href="#"
                    icon="c-sidebar-nav-icon fas fa-user"
                    class="c-sidebar-nav-dropdown-toggle"
                    :text="__('Access')" />

                <ul class="c-sidebar-nav-dropdown-items">
                    @if (
                        $logged_in_user->hasAllAccess() ||
                        (
                            $logged_in_user->can('admin.access.user.list') ||
                            $logged_in_user->can('admin.access.user.deactivate') ||
                            $logged_in_user->can('admin.access.user.reactivate') ||
                            $logged_in_user->can('admin.access.user.clear-session') ||
                            $logged_in_user->can('admin.access.user.impersonate') ||
                            $logged_in_user->can('admin.access.user.change-password')
                        )
                    )
                        <li class="c-sidebar-nav-item">
                            <x-utils.link
                                :href="route('admin.auth.user.index')"
                                class="c-sidebar-nav-link"
                                :text="__('User Management')"
                                :active="activeClass(Route::is('admin.auth.user.*'), 'c-active')" />
                        </li>
                    @endif

                    @if ($logged_in_user->hasAllAccess())
                        <li class="c-sidebar-nav-item">
                            <x-utils.link
                                :href="route('admin.auth.role.index')"
                                class="c-sidebar-nav-link"
                                :text="__('Role Management')"
                                :active="activeClass(Route::is('admin.auth.role.*'), 'c-active')" />
                        </li>
                    @endif
                </ul>
            </li>
        @endif

        @if ($logged_in_user->hasAllAccess())
            <li class="c-sidebar-nav-dropdown">
                <x-utils.link
                    href="#"
                    icon="c-sidebar-nav-icon cil-list"
                    class="c-sidebar-nav-dropdown-toggle"
                    :text="__('Logs')" />

                <ul class="c-sidebar-nav-dropdown-items">
                    <li class="c-sidebar-nav-item">
                        <x-utils.link
                            :href="route('log-viewer::dashboard')"
                            class="c-sidebar-nav-link"
                            :text="__('Dashboard')" />
                    </li>
                    <li class="c-sidebar-nav-item">
                        <x-utils.link
                            :href="route('log-viewer::logs.list')"
                            class="c-sidebar-nav-link"
                            :text="__('Logs')" />
                    </li>
                </ul>
            </li>
        @endif
    </ul>

    <button class="c-sidebar-minimizer c-class-toggler" type="button" data-target="_parent" data-class="c-sidebar-minimized"></button>
</div><!--sidebar-->
